<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% request.setCharacterEncoding("utf-8");%>

<% 
   String id = request.getParameter("id");
   String passwd= request.getParameter("passwd");
   String name = request.getParameter("name");    
   String address_number = request.getParameter("address_number"); 
   String address = request.getParameter("address"); 
   String tel = request.getParameter("tel");
   String phone_tel = request.getParameter("phone_tel"); 
   String birthday=request.getParameter("birthday");
   String sex=request.getParameter("sex");
   

   Connection conn=null;
   PreparedStatement pstmt=null;
   String str="";
   try{
 	 String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
     String dbId="jspid";
     String dbPass="jsppass";
 	 
 	 Class.forName("com.mysql.jdbc.Driver");
 	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
 	
 	 String sql= "insert into member values (?,?,?,?,?,?,?,?,?)";
 	 pstmt=conn.prepareStatement(sql);
 	 pstmt.setString(1,id);
     pstmt.setString(2,passwd);
 	 pstmt.setString(3,name);
 	 pstmt.setString(4,address_number);
 	 pstmt.setString(5,address);
     pstmt.setString(6,tel);
  	 pstmt.setString(7,phone_tel);
	 pstmt.setString(8,birthday);
	 pstmt.setString(9,sex);
 	 pstmt.executeUpdate();
 	 
 	 str= "캠핑 쇼핑몰에 회원이 되신걸 축하드립니다~~";

 	}catch(Exception e){ 
 		e.printStackTrace();
 		str="member 테이블에 새로운 레코드를 추가에 실패했습니다";
 	}finally{
 		if(pstmt != null) 
 			try{pstmt.close();}catch(SQLException sqle){}
 		if(conn != null) 
 			try{conn.close();}catch(SQLException sqle){}
 	}
 %>

<html>
<head>
<link href="sourceboot/css/bootstrap.min.css" rel="stylesheet">
<title>회원 성공!!</title>
</head>
<body  align="center">
 
  <br><br><br>
  	<div class="text-center jumbotron">
		  <h2> <%=str %></h2> <br>
		    <table align ="center">
			    <tr>
				     <form method="post" action="shop/shopMain.jsp">
						  	  <input type="submit" value="상점이동" class="btn btn-dark">
					 </form>
			     </tr>
			</table>
	</div>
	
</body>
</html>