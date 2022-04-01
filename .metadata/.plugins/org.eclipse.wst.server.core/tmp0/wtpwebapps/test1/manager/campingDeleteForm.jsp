<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%
String managerId ="";
try{
	managerId = (String)session.getAttribute("managerId");
	if(managerId==null || managerId.equals("")){
       response.sendRedirect("../logon/managerLoginForm.jsp");
	}else{
       int campingitem_id = Integer.parseInt(request.getParameter("campingitem_id"));
       String campingitem_kind = request.getParameter("campingitem_kind");
%>

<html>
<head>
<title>상품 삭제</title>
<link href="../sourceboot/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  		<a class="navbar-brand" href="#">상품관리</a>
    		<div class="text-right" align="right">
    		<table>
    		<tr>
    		<td>
    		 <form method="post" action="managerMain.jsp"> 
			    <input type="submit" value="홈" class="btn btn-dark">	
			  </form>
    		</td>
    		<td>
    		 <form method="post" action="../manager/campingList.jsp?campingitem_kind=all"> 
				<input type="submit" value="뒤로 가기" class="btn btn-dark">	 
			 </form>	
    		</td>
 
			 
			 </tr>
			 </table>
		    
	   	    </div>
	</nav>
	<br><Br><br>
		

	
	<div class="text-center jumbotron">
	  <h2>상품을 삭제 하시겠습니까?</h2>
		    <form method="post" name="delForm"  action="campingDeletePro.jsp?campingitem_id=<%=campingitem_id%>&campingitem_kind=<%=campingitem_kind%>"  
		     onsubmit="return deleteSave()"> 
		       <input type="submit" value="삭제" class="btn btn-outline-warning">	
		    </form>	
		    
	</div>






</body>
</html>
<% 
   }
}catch(Exception e){
	e.printStackTrace();
}
%>