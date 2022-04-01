<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "libbean.BuyDataBean" %>
<%@ page import = "libbean.BuyDBBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.NumberFormat" %>



<%
  String buyer = (String)session.getAttribute("id");
%>

<html>
<head>
<link href="../sourceboot/css/bootstrap.min.css" rel="stylesheet">

<title>주문관리</title>

</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  		<a class="navbar-brand" href="#">주문관리</a>
    		<div class="text-right" align="right">
		    	<form method="post" action="managerMain.jsp"> 
		   	    	<input type="submit" value="뒤로 가기" class="btn btn-dark">	
		    	</form>	
		    
	   	    </div>
	</nav>
<br><br><br><br><Br>


<%
List<BuyDataBean> buyLists = null;
BuyDataBean buyList = null; 
int count = 0;

BuyDBBean buyProcess = BuyDBBean.getInstance();
count = buyProcess.getListCount();

if(count == 0){
%>

  
  <table class="table table-hover"> 
     <tr height="30" class="table-warning"> 
   		  <td>구매목록이 없습니다.</td>
     </tr>
  </table>
 
<%
}else{
   buyLists = buyProcess.getBuyList();
%>

  <table class="table table-hover"> 
     <tr height="30" class="table-info"> 
      <td align="center"  width="20">No</td> 
      <td align="center"  width="20">주문자</td> 
      <td align="center"  width="130">제품명</td>
      <td align="center"  width="50">가격</td> 
       <td align="center"  width="70">수량</td>
      <td align="center"  width="80">주문일</td>
      <td align="center"  width="100">결제계좌</td>
      <td align="center"  width="30">배송명</td>
      <td align="center"  width="100">배송지전화</td>
      <td align="center"  width="30">배송지우편주소</td>
      <td align="center"  width="100">배송지주소</td>
      <td align="center"  width="50">배송지상황</td>
   </tr>
<%
  for(int i=0;i<buyLists.size();i++){
    buyList = (BuyDataBean)buyLists.get(i);	     	 
%>
    <tr> 
      <td align="center"  width="20"><%=buyList.getBuy_id() %></td> 
      <td align="center"  width="20"><%=buyList.getBuyer() %></td> 
       <td align="center"  width="130"><%=buyList.getCampingitem_title() %></td>
      <td align="center"  width="50"><%=buyList.getBuy_price() %></td> 
       <td align="center"  width="70"><%=buyList.getBuy_count()%></td>
       <td align="center"  width="80"><%=buyList.getBuy_date().toString() %></td>
     <td align="center"  width="100"><%=buyList.getAccount() %></td>
        <td align="center"  width="30"><%=buyList.getDeliveryName() %></td>
      <td align="center"  width="100"><%=buyList.getDeliveryTel() %></td>
       <td align="center"  width="30"><%=buyList.getDeliveryAddressNum() %></td>
      <td align="center"  width="100"><%=buyList.getDeliveryAddress() %></td>
     <td align="center"  width="50"><%=buyList.getSanction() %></td>
    </tr>
<%}%>
</table>
<%}%>
</body>
</html>