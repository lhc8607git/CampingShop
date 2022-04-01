<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "libbean.CartDataBean" %>
<%@ page import = "libbean.CartDBBean" %>
<%@ page import = "libbean.CustomerDataBean" %>
<%@ page import = "libbean.CustomerDBBean" %>
<%@ page import = "libbean.BuyDBBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.NumberFormat" %>


<%
   String buyer = (String)session.getAttribute("id");
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
	
 
 
<%
List<CartDataBean> cartLists = null;
List<String> accountLists = null;
CartDataBean cartList = null;
CustomerDataBean member= null;
int number = 0;
int total = 0;

if(session.getAttribute("id")==null){
	response.sendRedirect("shopMain.jsp");        
}else{
	CartDBBean bookProcess = CartDBBean.getInstance();
    cartLists = bookProcess.getCart(buyer);
    
    CustomerDBBean memberProcess = CustomerDBBean.getInstance();
    member = memberProcess.getMember(buyer);
    
    BuyDBBean buyProcess = BuyDBBean.getInstance();
    accountLists = buyProcess.getAccount();
%>
  <h3><b>구매 목록</b></h3>

  <form name="inform" method="post" action="updateCart.jsp">
  <table class="table table-hover"> 
    <tr class="table-dark"> 
      <td width="40">No.</td> 
      <td width="300">상품이름</td> 
      <td width="100">판매가격</td>
      <td width="90">수량</td> 
      <td width="110">금액</td>
    </tr>   
<%
  for(int i=0;i<cartLists.size();i++){
     cartList = cartLists.get(i);
%>
     
     <tr> 
       <td width="40"><%=++number %></td> 
       <td width="300" align="left">
         <img src="../photofile/<%=cartList.getCampingitem_image()%>" 
           border="0" width="30" height="50" align="middle">
           <%=cartList.getCampingitem_title()%>
       </td> 
       <td width="100"><%=NumberFormat.getInstance().format(cartList.getBuy_price())%></td>
       <td width="90"><%=cartList.getBuy_count()%></td> 
       <td width="110">
          <%total += cartList.getBuy_count()*cartList.getBuy_price();%>
          <%=NumberFormat.getInstance().format(cartList.getBuy_count()*cartList.getBuy_price()) %>
      </td>
    </tr>
<%
  }
%>
  <tr>
    <td colspan="5" align="right"><b>총 구매금액 : <%=NumberFormat.getInstance().format(total)%></b></td>
  </tr>
</table>

</form>
<%} 
 %>
<br>
  <h3><b>주문자 정보</b></h3>
<form method="post" action="buyPro.jsp" name="buyinput">
 <table class="table table-hover">
   <tr class="table-dark"> 
    <td  width="200" align="left">이름</td>
    <td  width="400" align="left"><%=member.getName()%></td>
   </tr>
   <tr class="table-dark"> 
    <td  width="200" align="left">전화번호</td>
    <td  width="400" align="left"><%=member.getTel()%></td>
   </tr>
   <tr class="table-dark"> 
    <td  width="200" align="left">휴대전화</td>
    <td  width="400" align="left"><%=member.getPhone_tel()%></td>
   </tr>
   <tr class="table-dark"> 
    <td  width="200" align="left">우편번호</td>
    <td  width="400" align="left"><%=member.getAddress_number()%></td>
   </tr>
   <tr class="table-dark"> 
    <td  width="200" align="left">배송지 주소</td>
    <td  width="400" align="left"><%=member.getAddress()%></td>
   </tr>
   <tr class="table-dark"> 
     <td  width="200" align="left">결제 업체 계좌</td>
     <td  width="400" align="left">
       <select name="account">
        <%
          for(int i=0;i<accountLists.size();i++){
           String accountList = accountLists.get(i);
         %>
           <option value="<%=accountList %>"><%=accountList %></option>
        <%}%>
       </select>
    </td>
  </tr>
  </table>
  <br>
   
 <h3><b>배송지 정보</b></h3>
 
<table class="table table-hover">
  <tr> 
    <td  width="200" align="left">성명</td>
    <td  width="400" align="left">
      <input type="text" name="deliveryName" value="<%=member.getName()%>">
    </td>
  </tr>
  <tr> 
    <td  width="200" align="left">휴대전화</td>
    <td  width="400" align="left">
      <input type="text" name="deliveryTel" value="<%=member.getPhone_tel()%>">
    </td>
  </tr>
  <tr> 
    <td  width="200" align="left">우편번호</td>
    <td  width="400" align="left">
      <input type="text" name="deliveryAddessNum" value="<%=member.getAddress_number()%>">
    </td>
  </tr>
  <tr> 
    <td  width="200" align="left">주소</td>
    <td  width="400" align="left">
      <input type="text" name="deliveryAddess" value="<%=member.getAddress()%>">
    </td>
  </tr>
  
   <input type="hidden" name="email" value="<%=session.getAttribute("id")%>">

  
   <tr> 
     <td colspan="2" align="center">
       <input type="submit" value="확인"  class="btn btn-primary">
       <input type="button" value="취소" class="btn btn-dark"
       onclick="javascript:window.location='cartList.jsp?campingitem_kind=all'">      
     </td>
   </tr>
  </table>
  </form>
</body>
</html>