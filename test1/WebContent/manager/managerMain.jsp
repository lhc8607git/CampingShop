<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
   String managerId ="";
   try{
	   managerId = (String)session.getAttribute("managerId");
	   
	   if(managerId==null || managerId.equals("")){
          response.sendRedirect("logon/managerLoginForm.jsp");
	   }else{
%>
<html>
<head>
<link href="../sourceboot/css/bootstrap.min.css" rel="stylesheet">
<title>캠핑관리</title>
</head>
<body>

	<h1> </h1><br><br>
		<h1 class="text-center display-2">캠핑</h1>	
		<br><br>
		
		
			<div align="center">
				<p>관리자</p>
				 <form method="post" action="logon/managerLogout.jsp"> 
						  <input type="submit" value="로그아웃" class="btn btn-dark">	 
				</form>	
				<br><br>
				
				<p>-----회원 정보-----</p>
				<form method="post" action="memberlist.jsp"> 
						  <input type="submit" value="회원리스트" class="btn btn-outline-warning">	
			    </form>		    
				<br>
		
				<p>-----상품 정보-----</p>
				<form method="post" action="../manager/campingRegisterForm.jsp"> 
						  <input type="submit" value="상품 등록" class="btn btn-outline-primary">	
				</form>	
				
			
				<form method="post" action="../manager/campingList.jsp?campingitem_kind=all"> 
						  <input type="submit" value="상품 관리" class="btn btn-outline-danger">	 
				</form>	
				<br>
				
				<p>-----주문 정보-----</p>
				<form method="post" action="orderedList.jsp"> 
						  <input type="submit" value="주문 확인" class="btn btn-outline-info">	
			    </form>	
			    
			    
			</div>
			
			<br><br><br>
			
  
</body>
</html>

<% 
	   }
    }catch(Exception e){
		e.printStackTrace();
	}
%>