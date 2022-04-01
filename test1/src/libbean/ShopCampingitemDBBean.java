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

public class ShopCampingitemDBBean {
	
    private static ShopCampingitemDBBean instance = new ShopCampingitemDBBean();
    
    public static ShopCampingitemDBBean getInstance() {
        return instance;
    }
    
    private ShopCampingitemDBBean() {}
    
    //커넥션풀을 사용해서 커넥션객체를 가져오는 메소스
    private Connection getConnection() throws Exception {
//        Context initCtx = new InitialContext();
//        Context envCtx = (Context) initCtx.lookup("java:/comp/env");  //하.... lookup 사용하면 안되겠다..
//        DataSource ds = (DataSource)envCtx.lookup("jdbc/basicjsp");
//        return ds.getConnection();
    	 String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
	     String dbId="jspid";
	     String dbPass="jsppass";
		 
		 Class.forName("com.mysql.jdbc.Driver");

		 return DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
        
    }

    
    //관리자 인증 메소드
    public int managerCheck(String id, String passwd) throws Exception {
		Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs= null;
        String dbpasswd="";
		int x=-1;
        
		try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement("select manager_passwd from manager where manager_id = ? ");
            pstmt.setString(1, id);
            
            rs= pstmt.executeQuery();

			if(rs.next()){
				dbpasswd= rs.getString("manager_passwd"); 
				if(dbpasswd.equals(passwd))
					x= 1; 
				else
					x= 0;
			}else
				x= -1;
			
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
    

    //캠핑 물품 등록 메소드
    public void insertclock(ShopCampingitemDataBean campingitem) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            conn = getConnection();
         
            pstmt = conn.prepareStatement(
            	"   insert into campingitem(campingitem_kind,campingitem_makername,campingitem_title,campingitem_price,campingitem_count,campingitem_launched,campingitem_material,campingitem_color,campingitem_size,campingitem_weight,campingitem_image,campingitem_content,campingitem_discount_rate)" 
            	+ " values (?,?,?,?,?,?,?,?,?,?,?,?,?)");                       //생김 makername,     launched,material, color,size,
            																	//지움 band,length,   id
            pstmt.setString(1, campingitem.getCampingitem_kind());
            pstmt.setString(2, campingitem.getCampingitem_makername());
            pstmt.setString(3, campingitem.getCampingitem_title());
            pstmt.setInt(4, campingitem.getCampingitem_price());
            pstmt.setShort(5, campingitem.getCampingitem_count());
            pstmt.setString(6, campingitem.getCampingitem_launched());
			pstmt.setString(7, campingitem.getCampingitem_material());
			pstmt.setString(8, campingitem.getCampingitem_color());
			pstmt.setString(9, campingitem.getCampingitem_size());
			pstmt.setInt(10,campingitem.getCampingitem_weight());
			
			pstmt.setString(11,campingitem.getCampingitem_image());
			pstmt.setString(12,campingitem.getCampingitem_content());
			pstmt.setByte(13,campingitem.getCampingitem_discount_rate());
			
			
            pstmt.executeUpdate();
            
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (pstmt != null) 
            	try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) 
            	try { conn.close(); } catch(SQLException ex) {}
        }
    }
  
        
	//전체 등록된 캠핑아이템(물품)의 수를 알아내는 메소드
	public int getcampingCount() throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        int x=0;

        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement("select count(*) from campingitem");
            rs = pstmt.executeQuery();

            if (rs.next()) 
               x= rs.getInt(1);

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

	
	//분류별 또는 전체 등록이된 캠핑아이템의 정보를 얻어내는 메소드
	public List<ShopCampingitemDataBean> getcampings(String campingitem_kind) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<ShopCampingitemDataBean> campingitemList=null;
        
        try {
            conn = getConnection();
            
            String sql1 = "select * from campingitem";
            String sql2 = "select * from campingitem ";
            sql2 += "where campingitem_kind = ? order by campingitem_price desc";
            
            if(campingitem_kind.equals("all")){
            	pstmt = conn.prepareStatement(sql1);
            }else{
                pstmt = conn.prepareStatement(sql2);
                pstmt.setString(1, campingitem_kind);
            }
        	rs = pstmt.executeQuery();
            
            if (rs.next()) {
            	campingitemList = new ArrayList<ShopCampingitemDataBean>();
                do{
                	ShopCampingitemDataBean campingitem= new ShopCampingitemDataBean();
                     
                	campingitem.setCampingitem_id(rs.getString("campingitem_id"));        	  //생김 makername,     launched,material, color,size,
                	campingitem.setCampingitem_kind(rs.getString("campingitem_kind"));        //지움 band,length,   id도 지움
                	campingitem.setCampingitem_makername(rs.getString("campingitem_makername"));
                	campingitem.setCampingitem_title(rs.getString("campingitem_title"));
                	campingitem.setCampingitem_price(rs.getInt("campingitem_price"));
                	campingitem.setCampingitem_count(rs.getShort("campingitem_count"));
                	campingitem.setCampingitem_launched(rs.getString("campingitem_launched"));
                   	campingitem.setCampingitem_material(rs.getString("campingitem_material"));
                 	campingitem.setCampingitem_color(rs.getString("campingitem_color"));
                 	campingitem.setCampingitem_size(rs.getString("campingitem_size"));
                	campingitem.setCampingitem_weight(rs.getInt("campingitem_weight"));
                   	campingitem.setCampingitem_image(rs.getString("campingitem_image"));       //근데 여기서는    content 뺌  
                   	campingitem.setCampingitem_discount_rate(rs.getByte("campingitem_discount_rate"));
                   
                    campingitemList.add(campingitem);
			    }while(rs.next());
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
		return campingitemList;
    }
	
	//★★★★쇼핑몰 메인에 표시하기 위해서        사용하는           분류별       새로 나온 캠핑물품 목록을 얻어내는 메소드 
	public ShopCampingitemDataBean[] getcampings(String campingitem_kind,int count) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ShopCampingitemDataBean campingList[]=null;
        int i=0;
        
        try {
            conn = getConnection();
            
            String sql = "select * from campingitem where campingitem_kind = ? ";
            sql += "order by campingitem_kind desc limit ?,?";
            
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, campingitem_kind);
            pstmt.setInt(2, 0);
            pstmt.setInt(3, count);
        	rs = pstmt.executeQuery();

            if (rs.next()) {
            	campingList = new ShopCampingitemDataBean[count];
                do{
                    ShopCampingitemDataBean campingitem= new ShopCampingitemDataBean();
             
                    campingitem.setCampingitem_id(rs.getString("campingitem_id")); 			        //id지움
                	campingitem.setCampingitem_kind(rs.getString("campingitem_kind"));
                	campingitem.setCampingitem_makername(rs.getString("campingitem_makername"));
                	campingitem.setCampingitem_title(rs.getString("campingitem_title"));
                	campingitem.setCampingitem_price(rs.getInt("campingitem_price"));
                	campingitem.setCampingitem_count(rs.getShort("campingitem_count"));
                	campingitem.setCampingitem_launched(rs.getString("campingitem_launched"));
                   	campingitem.setCampingitem_material(rs.getString("campingitem_material"));
                 	campingitem.setCampingitem_color(rs.getString("campingitem_color"));
                 	campingitem.setCampingitem_size(rs.getString("campingitem_size"));
                	campingitem.setCampingitem_weight(rs.getInt("campingitem_weight"));              //근데 여기서는    content 뺌  
                   	campingitem.setCampingitem_image(rs.getString("campingitem_image"));
                   	campingitem.setCampingitem_discount_rate(rs.getByte("campingitem_discount_rate"));
                     
                    campingList[i]=campingitem;
                     
                    i++;
			    }while(rs.next());
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
		return campingList;
    }

	
	//campingitem_kind에 해당하는 캠핑물품의 정보를 얻어내는 메소드로
	//★★★★★★★★★★등록된 캠핑 물품을 수정하기 위해 수정폼으로 읽어들이기 위한 메소드 ★★★★★★★★★★
	public ShopCampingitemDataBean getcampingitem(int campingitem_id)
    throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ShopCampingitemDataBean campingitem=null;
        
        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement("select * from campingitem where campingitem_id = ?");
            pstmt.setInt(1, campingitem_id);
            
            rs = pstmt.executeQuery();

            if (rs.next()) {
            	campingitem = new ShopCampingitemDataBean();
                
            	campingitem.setCampingitem_id(rs.getString("campingitem_id"));					//id지움
            	campingitem.setCampingitem_kind(rs.getString("campingitem_kind"));
            	campingitem.setCampingitem_makername(rs.getString("campingitem_makername"));
            	campingitem.setCampingitem_title(rs.getString("campingitem_title"));
            	campingitem.setCampingitem_price(rs.getInt("campingitem_price"));
            	campingitem.setCampingitem_count(rs.getShort("campingitem_count"));
            	campingitem.setCampingitem_launched(rs.getString("campingitem_launched"));
               	campingitem.setCampingitem_material(rs.getString("campingitem_material"));
             	campingitem.setCampingitem_color(rs.getString("campingitem_color"));
             	campingitem.setCampingitem_size(rs.getString("campingitem_size"));
            	campingitem.setCampingitem_weight(rs.getInt("campingitem_weight"));
               	campingitem.setCampingitem_image(rs.getString("campingitem_image"));
               	
               	campingitem.setCampingitem_content(rs.getString("campingitem_content"));
               	campingitem.setCampingitem_discount_rate(rs.getByte("campingitem_discount_rate"));
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
		return campingitem;
    }
    

    //등록된 캠핑아이템의 정보를 수정 시 사용하는 메소드
    public void updateclock(ShopCampingitemDataBean camapingitem, int campingitem_id) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        String sql;
        
        try {
            conn = getConnection();
            
            sql = "update camapingitem set campingitem_kind=?,campingitem_makername=?,campingitem_title=?, camapingitem_price=?";
            sql += ",camapingitem_count=?,camapingitem_launched=?,campingitem_material=?,campingitem_color=?";
            sql += ",campingitem_size=?,campingitem_weight=?,campingitem_image=?,campingitem_content=?,campingitem_discount_rate=?";
            sql += " where campingitem_id=?";
            
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, camapingitem.getCampingitem_kind());
            pstmt.setString(2, camapingitem.getCampingitem_makername());
            pstmt.setString(3, camapingitem.getCampingitem_title());
            pstmt.setInt(4, camapingitem.getCampingitem_price());
            
            pstmt.setShort(5, camapingitem.getCampingitem_count());
            pstmt.setString(6, camapingitem.getCampingitem_launched());
            pstmt.setString(7, camapingitem.getCampingitem_material());
            pstmt.setString(8, camapingitem.getCampingitem_color());
            
            pstmt.setString(9, camapingitem.getCampingitem_size());
    		pstmt.setInt(10, camapingitem.getCampingitem_weight());
    		pstmt.setString(11, camapingitem.getCampingitem_image());
    		pstmt.setString(12, camapingitem.getCampingitem_content());
    		pstmt.setByte(13, camapingitem.getCampingitem_discount_rate());
    		pstmt.setInt(14, campingitem_id);
            
    		
    		
            pstmt.executeUpdate();
            
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (pstmt != null) 
            	try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) 
            	try { conn.close(); } catch(SQLException ex) {}
        }
    }
    
    
    // campingitem_kind에 해당하는 시계의 정보를 삭제 시 사용하는 메소드
    public void deletecamping(int campingitem_id)
    throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs= null;
        
        try {
			conn = getConnection();

            pstmt = conn.prepareStatement(
            	"delete from campingitem where campingitem_id=?");
            pstmt.setInt(1, campingitem_id);
            
            pstmt.executeUpdate();
            
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
    }
    

}