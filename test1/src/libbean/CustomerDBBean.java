package libbean;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class CustomerDBBean {
	
	private static CustomerDBBean instance = new CustomerDBBean();
	   
    public static CustomerDBBean getInstance() {
    	return instance;
    }
   
    private CustomerDBBean() {}
   
    private Connection getConnection() throws Exception {
//        Context initCtx = new InitialContext();
//        Context envCtx = (Context) initCtx.lookup("java:comp/env");
//        DataSource ds = (DataSource)envCtx.lookup("jdbc/basicjsp");    //하.... lookup 사용하면 안되겠다..
//        return ds.getConnection();

  	     String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
	     String dbId="jspid";
	     String dbPass="jsppass";
		 
		 Class.forName("com.mysql.jdbc.Driver");
		 return DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
    }

//    //회원가입
//    public void insertMember(CustomerDataBean member) 
//    throws Exception {
//    	Connection conn = null;
//        PreparedStatement pstmt = null;
//        
//        try {
//            conn = getConnection();
//           
//            pstmt = conn.prepareStatement(
//           	 "insert into member values (?,?,?,?,?,?,?,?)");
//            pstmt.setString(1, member.getid());
//            pstmt.setString(2, member.getpasswd());
//            pstmt.setString(3, member.getname());
//            pstmt.setString(4, member.getaddress_number());
//            pstmt.setString(5, member.getaddress());
//            pstmt.setString(6, member.gettel());
//            pstmt.setString(7, member.getphone_tel());
//          
//            pstmt.executeUpdate();
//        }catch(Exception ex) {
//        	ex.printStackTrace();
//        } finally {
//            if (pstmt != null) 
//            	try { pstmt.close(); } catch(SQLException ex) {}
//            if (conn != null) 
//            	try { conn.close(); } catch(SQLException ex) {}
//        }
//    }

  
    //사용자 인증처리
    public int userCheck(String id, String passwd) throws Exception {
    			 Connection conn = null;
    	         PreparedStatement pstmt = null;
    			 ResultSet rs= null;
    	         String dbpasswd="";
    			 int x=-1;
    	       
    			 try {
    				conn = getConnection();
    	           
    	            pstmt = conn.prepareStatement("select member_passwd from member where member_id = ?");
    	            pstmt.setString(1, id);
    	            rs= pstmt.executeQuery();

    				if(rs.next()){
    					dbpasswd= rs.getString("member_passwd"); 
    					if(dbpasswd.equals(passwd))
    						x= 1; //인증 성공
    					else
    						x= 0; //비밀번호 틀림
    				}else
    					x= -1;    //해당 아이디 없음
    	         }catch(Exception ex) {
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

	 
	 //회원정보 수정하기 위해 기본의 정보를 표시 하는 부분
     public CustomerDataBean getMember(String id) throws Exception {
    	 Connection conn = null;
         PreparedStatement pstmt = null;
         ResultSet rs = null;
         CustomerDataBean member=null;
         
         try {
        	 conn = getConnection();
           
             pstmt = conn.prepareStatement("select * from member where member_id = ?");
             pstmt.setString(1, id);
             rs = pstmt.executeQuery();

             if (rs.next()) {
            	 member = new CustomerDataBean();
            	 
                 member.setId(rs.getString("member_id"));
                 member.setPasswd(rs.getString("member_passwd"));
				 member.setName(rs.getString("member_name"));
                 member.setAddress_number(rs.getString("memberaddress_address_number"));  
                 member.setAddress(rs.getString("memberaddress_address"));  
                 member.setTel(rs.getString("member_tel"));
                 member.setPhone_tel(rs.getString("member_phone_tel"));  
                 member.setBirthday(rs.getString("member_birthday"));  
                 member.setSex(rs.getString("member_sex"));  
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
		 return member;
     }
   
               
     //회원 정보 수정 처리 하는 부분
     public void updateMember(CustomerDataBean member) throws Exception {
    	 Connection conn = null;
         PreparedStatement pstmt = null;
       
         try {
        	 conn = getConnection();
           
             pstmt = conn.prepareStatement(
               "update member set member_passwd=?,member_name=?,memberaddress_address_number=?,memberaddress_address=?,member_tel=?,member_phone_tel=?,member_birthday=?,member_sex=? where member_id=?");
             pstmt.setString(1, member.getPasswd());
             pstmt.setString(2, member.getName());
             pstmt.setString(3, member.getAddress_number());
             pstmt.setString(4, member.getAddress());
             pstmt.setString(5, member.getTel());
             pstmt.setString(6, member.getPhone_tel());
             pstmt.setString(7, member.getBirthday());
             pstmt.setString(8, member.getSex());
            
             
             pstmt.setString(9, member.getId());
           
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
   
     //회원탈퇴 부분
//     public int deleteMember(String id, String passwd) 
//     throws Exception {
//         Connection conn = null;
//         PreparedStatement pstmt = null;
//         ResultSet rs= null;
//         String dbpasswd="";
//         int x=-1;
//         
//         try {
//			 conn = getConnection();
//
//             pstmt = conn.prepareStatement(
//           	  "select passwd from member where id = ?");
//             pstmt.setString(1, id);
//             rs = pstmt.executeQuery();
//           
//			 if(rs.next()){
//				 dbpasswd= rs.getString("passwd"); 
//				 if(dbpasswd.equals(passwd)){
//					 pstmt = conn.prepareStatement(
//           	             "delete from member where id=?");
//                     pstmt.setString(1, id);
//                     pstmt.executeUpdate();
//					 x= 1;
//				 }else
//					 x= 0;
//			 }
//         }catch(Exception ex) {
//             ex.printStackTrace();
//         }finally {
//             if (rs != null) 
//            	 try { rs.close(); } catch(SQLException ex) {}
//             if (pstmt != null) 
//            	 try { pstmt.close(); } catch(SQLException ex) {}
//             if (conn != null) 
//            	 try { conn.close(); } catch(SQLException ex) {}
//         }
//		 return x;
//     }

}