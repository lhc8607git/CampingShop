<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<html>
<head>
<link href="../sourceboot/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>



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
       
   
     
 <%}
 }catch(NullPointerException e){
	 e.printStackTrace();
 }
 %>
</body>
</html>