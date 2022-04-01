<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% request.setCharacterEncoding("utf-8");%>

<% 
	
   String id = request.getParameter("confirmid");

   Connection conn=null;
   PreparedStatement pstmt=null;
   String str="";
   ResultSet rs=null;
   String idresult="";
   try{
	 String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
     String dbId="jspid";
     String dbPass="jsppass";
	 
	 Class.forName("com.mysql.jdbc.Driver");
	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	
	 String sql= "select member_id from member where member_id=?";
	 pstmt=conn.prepareStatement(sql);
	 pstmt.setString(1,id);
  
	 rs=pstmt.executeQuery();
	 
	if(rs.next())
		idresult="이미 존재하는 ID가 있습니다.";
	else
		idresult="사용 가능한 ID 입니다.";

	}catch(Exception e){ 
		e.printStackTrace();
	}finally{
		if(pstmt != null) 
			try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null) 
			try{conn.close();}catch(SQLException sqle){}
	}
%>

<!DOCTYPE html>
<html>
<head>
<link href="sourceboot/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>ID중복확인</title>
</head>
<body align="center">

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
   <a class="navbar-brand" href="shop/list.jsp?clock_kind=all">캠핑</a>
  <button class="navbar-toggler collapsed" aria-expanded="false" aria-controls="navbarColor01" aria-label="Toggle navigation" type="button" data-target="#navbarColor01" data-toggle="collapse">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="manager/logon/managerLoginForm.jsp"> 관리자<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
       <a class="nav-link" href="#">주문조회</a>
      </li>
      <li class="nav-item">
         <a class="nav-link" href="#">고객후기</a>
      </li>
      <li class="nav-item">
       <a class="nav-link" href="boardfolder/list.jsp">Q&A 문의</a>
      </li>
    </ul>    
  </div>
</nav>
 
  <br><br><br>
  	<div class="text-center jumbotron">
		  <h2> <%=idresult %></h2> <br>
		    <table align ="center">
			    <tr>
				     <form method="post" action="insertTestForm.jsp">
						  	  <input type="submit" value="회원가입하기" class="btn btn-dark">
					 </form>
			     </tr>
			</table>
	</div>
</body>
</html>
