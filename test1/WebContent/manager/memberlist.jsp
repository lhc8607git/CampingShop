<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<html>
<head>
<title>회원리스트</title>
<link href="../sourceboot/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  		<a class="navbar-brand" href="#">회원리스트</a>
    		<div class="text-right" align="right">
		    	<form method="post" action="managerMain.jsp"> 
		   	    	<input type="submit" value="뒤로 가기" class="btn btn-dark">	
		    	</form>	
		    
	   	    </div>
	</nav>
<br><br><br><br>


  <table class="table table-hover"> 
	 <tr height="30" class="table-warning">
	    <td align="center"  width="10">No</td>  
	  	<td align="center"  width="20">아이디</td>
	  	<td align="center"  width="20">패스워드</td>
	  	<td align="center"  width="20">이름</td>
	  	<td align="center"  width="20">우편번호</td>
	  	<td align="center"  width="30">주소</td>
	  	<td align="center"  width="20">전화번호</td>
	  	<td align="center"  width="20">핸드폰번호</td>
	  	<td align="center"  width="20">생년월일</td>
	  	<td align="center"  width="20">성별</td>
	  </tr>
	  
	<%
	  Connection conn=null;
	  PreparedStatement pstmt=null;
	  ResultSet rs=null;
	
	  try{
		 String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
	     String dbId="jspid";
	     String dbPass="jsppass";
		 
		 Class.forName("com.mysql.jdbc.Driver");
		 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	
		 String sql= "select * from member";
		 pstmt=conn.prepareStatement(sql);
		 rs=pstmt.executeQuery();
	
		   int number = 0;
		 while(rs.next()){
		   String id= rs.getString("member_id");
	       String passwd= rs.getString("member_passwd");
	       String name= rs.getString("member_name");
	       String address_number = rs.getString("memberaddress_address_number");
	       String address = rs.getString("memberaddress_address");
	       String tel = rs.getString("member_tel");
	       String phone_tel = rs.getString("member_phone_tel");
	       String birthday=rs.getString("member_birthday");
	       String sex=rs.getString("member_sex");
	%>

	       <tr height="30">
	         <td  align="center"  width="10"><%=++number%></td> 
	  	     <td align="center"  width="20"><%=id%></td>
	  	     <td align="center"  width="20"><%=passwd%></td>
	  	     <td align="center"  width="20"><%=name%></td>
	  	     <td align="center"  width="20"><%=address_number%></td>
	  	     <td align="center"  width="30"><%=address%></td>
	  	     <td align="center"  width="20"><%=tel%></td>
	  	     <td align="center"  width="20"><%=phone_tel%></td>
	  	     <td align="center"  width="20"><%=birthday%></td>
	  	     <td align="center"  width="20"><%=sex%></td>
	       </tr>

	<%  } 
	  }catch(Exception e){ 
		 e.printStackTrace();
	  }finally{
		 if(rs != null) 
		    try{rs.close();}catch(SQLException sqle){}
		 if(pstmt != null) 
			try{pstmt.close();}catch(SQLException sqle){}
		 if(conn != null) 
			try{conn.close();}catch(SQLException sqle){}
	  }
	%>
  </table>
</body>
</html>