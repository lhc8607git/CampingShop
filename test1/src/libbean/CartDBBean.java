package libbean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class CartDBBean {

	private static CartDBBean instance = new CartDBBean();
	   
    public static CartDBBean getInstance() {
    	return instance;
    }
   
    private CartDBBean() {}
   
    private Connection getConnection() throws Exception {
//      Context initCtx = new InitialContext();
//      Context envCtx = (Context) initCtx.lookup("java:comp/env");        //커넥션풀 다시 공부해야 할 듯..
//      DataSource ds = (DataSource)envCtx.lookup("jdbc/basicjsp");    //하.... lookup 사용하면 안되겠다..
//      return ds.getConnection();

    	 String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
	     String dbId="jspid";
	     String dbPass="jsppass";
		 
		 Class.forName("com.mysql.jdbc.Driver");
		 return DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
  }
    
    //장바구니에 담기 누르면  cart 테이블에 추가
    public void insertCart(CartDataBean cart) 
    throws Exception {
    	Connection conn = null;
        PreparedStatement pstmt = null;
        String sql="";
        
        try {
            conn = getConnection();
            sql = "insert into cart (campingitem_id, buyer," +
            		"campingitem_title,buy_price,buy_count,campingitem_image) " +
            		"values (?,?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setInt(1, cart.getCampingitem_id());
            pstmt.setString(2, cart.getBuyer());
            pstmt.setString(3, cart.getCampingitem_title());
            pstmt.setInt(4, cart.getBuy_price());
            pstmt.setByte(5, cart.getBuy_count());
            pstmt.setString(6, cart.getCampingitem_image());
            
            pstmt.executeUpdate();
        }catch(Exception ex) {
        	ex.printStackTrace();
        } finally {
            if (pstmt != null) 
            	try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) 
            	try { conn.close(); } catch(SQLException ex) {}
        }
    }
    
    //id에 해당하는 총 결과 수를 알아내는거
    public int getListCount(String id) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        int x=0;

        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement(
            		"select count(*) from cart where buyer=?");
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
               x= rs.getInt(1);
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) 
            	try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) 
            	try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) 
            	try { conn.close(); } catch(SQLException ex) {}
        }
		return x;
    }

	 
     //id에 해당하는 레코드 목록 알아내는 거
     public List<CartDataBean> getCart(String id) throws Exception {
    	 Connection conn = null;
         PreparedStatement pstmt = null;
         ResultSet rs = null;
         CartDataBean cart=null;
         String sql = "";
         List<CartDataBean> lists = null;
         
         try {
        	 conn = getConnection();
        	 
        	 sql = "select * from cart where buyer = ?";
             pstmt = conn.prepareStatement(sql);
             
             pstmt.setString(1, id);
             rs = pstmt.executeQuery();
             
             lists = new ArrayList<CartDataBean>();

             while (rs.next()) {
            	 cart = new CartDataBean();
            	 
            	 cart.setCart_id(rs.getInt("cart_id"));
            	 cart.setCampingitem_id(rs.getInt("campingitem_id"));
            	 cart.setCampingitem_title(rs.getString("campingitem_title"));
            	 cart.setBuy_price(rs.getInt("buy_price"));
            	 cart.setBuy_count(rs.getByte("buy_count")); 
            	 cart.setCampingitem_image(rs.getString("campingitem_image"));
            	 
            	 lists.add(cart);
			 }
         }catch(Exception ex) {
             ex.printStackTrace();
         }finally {
             if (rs != null) 
            	 try { rs.close(); } catch(SQLException ex) {}
             if (pstmt != null) 
            	 try { pstmt.close(); } catch(SQLException ex) {}
             if (conn != null) 
            	 try { conn.close(); } catch(SQLException ex) {}
         }
		 return lists;
     }
   
     //장바구니에서 수량을 수정 할 때 사용하는거
     public void updateCount(int cart_id, byte count) throws Exception {
    	 Connection conn = null;
         PreparedStatement pstmt = null;
       
         try {
        	 conn = getConnection();
            
             pstmt = conn.prepareStatement(
               "update cart set buy_count=? where cart_id=?");
             pstmt.setByte(1, count);
             pstmt.setInt(2, cart_id);
                        
             pstmt.executeUpdate();
         }catch(Exception ex) {
             ex.printStackTrace();
         }finally {
             if (pstmt != null) 
            	 try { pstmt.close(); } catch(SQLException ex) {}
             if (conn != null) 
            	 try { conn.close(); } catch(SQLException ex) {}
         }
     }

   
     //장바구니에 cart_id에대한 행을 삭제하는 거
     public void deleteList(int cart_id) throws Exception {
         Connection conn = null;
         PreparedStatement pstmt = null;
               
         try {
			 conn = getConnection();

             pstmt = conn.prepareStatement(
           	   "delete from  cart where cart_id=?");
             pstmt.setInt(1, cart_id);
             
             pstmt.executeUpdate();

         }catch(Exception ex) {
             ex.printStackTrace();
         }finally {
             
             if (pstmt != null) 
            	 try { pstmt.close(); } catch(SQLException ex) {}
             if (conn != null) 
            	 try { conn.close(); } catch(SQLException ex) {}
         }
     }
     
     //id에 해당하는 모든 행을 삭제하는 건데 [장바구니 비우기]단추를 누르면 실행되는거임
     public void deleteAll(String id) throws Exception {
         Connection conn = null;
         PreparedStatement pstmt = null;
                  
         try {
			 conn = getConnection();

             pstmt = conn.prepareStatement(
               "delete from cart where buyer=?");
             pstmt.setString(1, id);
             
             pstmt.executeUpdate();
         }catch(Exception ex) {
             ex.printStackTrace();
         }finally {
             if (pstmt != null) 
            	 try { pstmt.close(); } catch(SQLException ex) {}
             if (conn != null) 
            	 try { conn.close(); } catch(SQLException ex) {}
         }
     }

}