<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "libbean.CartDataBean" %>
<%@ page import = "libbean.CartDBBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.NumberFormat" %>



<%
 String campingitem_kind = request.getParameter("campingitem_kind");
 String buyer = (String)session.getAttribute("id");
%>

<html>
<head>
<link href="../sourceboot/css/bootstrap.min.css" rel="stylesheet">
<title>campingshop</title>

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



<%
  List<CartDataBean> cartLists = null;
  CartDataBean cartList = null;
  int count = 0;
  int number = 0;
  int total = 0;

  if(session.getAttribute("id")==null){
     response.sendRedirect("shopMain.jsp");        
  }else{
     CartDBBean campingitemProcess = CartDBBean.getInstance();
     count = campingitemProcess.getListCount(buyer);

     if(count == 0){
%>

		   <h3><b>장바구니</b></h3>
		   <table> 
		     <tr><td >물품이 없습니다.</td> </tr>
		   </table>
		   <br>
           <input type="button" value="쇼핑계속" class="btn btn-dark"
            onclick="javascript:window.location='list.jsp?campingitem_kind=all'">

<%
   }else{
     cartLists = campingitemProcess.getCart(buyer);
 %>

   <h3><b>장바구니</b></h3>
   <form name="cartform">
   <table> 
     <tr> 
       <td width="50">No.</td> 
       <td width="300">상품</td> 
       <td width="100">판매가격</td>
       <td width="150">수량</td> 
       <td width="150">금액</td>
     </tr>
      
<%
     for(int i=0;i<cartLists.size();i++){
       cartList = (CartDataBean)cartLists.get(i);
%>
     
     <tr> 
       <td width="50"><%=++number %></td> 
       <td  width="300" align="left">
         <img src="../photofile/<%=cartList.getCampingitem_image()%>" 
             border="0" width="30" height="50" align="middle">
             <%=cartList.getCampingitem_title()%>
       </td> 
       <td width="100"><%=NumberFormat.getInstance().format(cartList.getBuy_price())%></td>
       <td width="150">
          <input type="text" name="buy_count" size="5" value="<%=cartList.getBuy_count()%>">
          <% 
          String url = "updateCartForm.jsp?cart_id="+cartList.getCart_id()+
            "&campingitem_kind="+campingitem_kind + "&buy_count="+cartList.getBuy_count();
          
          %>
          <input type="button" value="수정" class="btn btn-outline-info"
            onclick="javascript:window.location='<%=url%>'">
       </td> 
       <td align="center"  width="150">
          <%total += cartList.getBuy_count()*cartList.getBuy_price();%>
            <%=NumberFormat.getInstance().format(cartList.getBuy_count()*cartList.getBuy_price()) %>
          <input type="button" value="삭제"  class="btn btn-outline-danger"
            onclick="javascript:window.location=
            'cartListDel.jsp?list=<%=cartList.getCart_id()%>&campingitem_kind=<%=campingitem_kind%>'">
       </td>
     </tr>
<%}%>
     <tr>
       <td colspan="5" align="right"><b>총 금액 : <%=NumberFormat.getInstance().format(total)%></b></td>
     </tr>
     <tr>
       <td colspan="5">
         <input type="button" value="구매하기"  class="btn btn-primary"
            onclick="javascript:window.location='buyForm.jsp'">
         <input type="button" value="쇼핑계속" class="btn btn-dark"
            onclick="javascript:window.location='list.jsp?campingitem_kind=all'">
         <input type="button" value="장바구니비우기" class="btn btn-dark"
            onclick="javascript:window.location='cartListDel.jsp?list=all&campingitem_kind=<%=campingitem_kind%>'">
       </td>
     </tr>
   </table>
   </form>
<%
  } 
}
%>
<br><br>
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