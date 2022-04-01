<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "libbean.CartDBBean" %>

<%
 String cart_id = request.getParameter("cart_id");
 String buy_count = request.getParameter("buy_count");
 String campingitem_kind = request.getParameter("campingitem_kind");
 

 if(session.getAttribute("id")==null){
	response.sendRedirect("shopMain.jsp");        
 }else{
%>
<html>
<head>
<link href="../sourceboot/css/bootstrap.min.css" rel="stylesheet">
<title></title>

</head>
<body align="center">


<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
   <a class="navbar-brand" href="shopMain.jsp">캠핑</a>
  <button class="navbar-toggler collapsed" aria-expanded="false" aria-controls="navbarColor01" aria-label="Toggle navigation" type="button" data-target="#navbarColor01" data-toggle="collapse">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="../manager/logon/managerLoginForm.jsp"> 관리자<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
         <a class="nav-link" href="searchorder.jsp">주문조회</a>
      </li>
      <li class="nav-item">
       <a class="nav-link" href="../boardfolder/list.jsp">Q&A 문의</a>
      </li>
    </ul>    
  </div>
</nav>


<%
 try{
   if(session.getAttribute("id")==null){%>
 

   
	<div align="right">
	<table>
	<tr>
		<td>
			<table>
					<tr>
						<td>
						  <div class="form-group">
						      <label for="exampleInputEmail1">Email</label>
						      <form name="inform" method="post" action="loginPro.jsp">
						      <input name="id"  type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="***@***.***">
						    </div>
				    	</td>
				    	<td>
				    		<div class="form-group">
						      <label for="exampleInputPassword1">Password</label>
						      <input name="passwd" type="password" class="form-control" id="exampleInputPassword1" placeholder="*********">
						    </div>
				    	</td>
				    	<td>
					    	<table>
						    	<tr>
							    	<td>
							    		<input type="submit" value="Login" name="Submit"  class="btn btn-success  btn-sm">
							    		</form>
							    	</td>
							    </tr>
							    <tr>
							    	<td>
							    		<form method="post" action="../insertTestForm.jsp">
									      	<input type="submit" value="Sign up" class="btn btn-secondary btn-sm"">
									 	</form>
							    	</td>
						    	</tr>
					    	</table>
				    	</td>
				    </tr>   	 	
			</table>
		</td>
	</tr>
	</table>
	</div>

       
 <%}else{%>
 <br>
 
	 <div align="right">
	     <b><%=session.getAttribute("id")%></b>님
	    
	    <input type="button"  value="장바구니" onclick="javascript:window.location='cartList.jsp?campingitem_kind=all'" class="btn btn-info">
	    <input type="button"  value="주문내역" onclick="javascript:window.location='buyList.jsp'" class="btn btn-danger">
	    <input type="button"  value="로그아웃" onclick="javascript:window.location='../shop/logout.jsp'" class="btn btn-dark">
	</div>
 <br>
   
   
     
 <%}
 }catch(NullPointerException e){
	 e.printStackTrace();
 }
 %>
 
 
 
 	<br>
	<jsp:include page="topmiddle.jsp" flush="false" /> 
		
		
	
	<br>
	
	<form method="POST" name="updateForm"  action="updateCart.jsp" > 
		 변경할 수량 : 
		 <input type="text" name="buy_count" size="5" value="<%=buy_count%>">
	     <input type="hidden" name="cart_id" value="<%=cart_id%>">
	     <input type="hidden" name="book_kind" value="<%=campingitem_kind%>">
		 <input type="submit" value="변경" class="btn btn-outline-info">  
	</form>


	<br><br><br><br><Br><br><br><Br><br><br>
	
	<table>
		<tr>
		    <td width="180" valign="center" halign="center">
			    <img src="logo2.PNG" border="0" width="110" height="110">
			</td>
			<td width="700" valign="top">
		        <jsp:include page="bottom.jsp" flush="false" />
		    </td>
		</tr>
	</table>
</body>
</html>
<%}%>