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
<title>campingshop</title>
<link href="../sourceboot/css/bootstrap.min.css" rel="stylesheet">

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

<div class="text-right">
<br>
  		<b><%=session.getAttribute("id")%></b>님 
  			
 		
	   	<input type="button"  value="장바구니"  onclick="javascript:window.location='../shop/cartList.jsp?clock_kind=all'" class="btn btn-info">
	    <input type="button"  value="주문내역"  onclick="javascript:window.location='../shop/buyList.jsp'" class="btn btn-danger">	   
	    <input type="button" value="로그아웃"  onclick="javascript:window.location='../shop/logout.jsp'" class="btn btn-dark">
</div>	    
	    
	    <br><br>
	    
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="list.jsp?campingitem_kind=all">ALL</a>
	  <div class="collapse navbar-collapse">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="list.jsp?campingitem_kind=100">  랜턴|버너 </a>
	      </li>
	      <li class="nav-item active">
	        <a class="nav-link" href="list.jsp?campingitem_kind=200">  캠핑퍼니처 </a>
	      </li>
	      <li class="nav-item active">
	        <a class="nav-link" href="list.jsp?campingitem_kind=300">  침낭|매트 </a>
	      </li>
	      <li class="nav-item active">
	        <a class="nav-link" href="list.jsp?campingitem_kind=400">  텐트|천막 </a>
	      </li>
	         <li class="nav-item active">
	        <a class="nav-link" href="list.jsp?campingitem_kind=500">  의류 </a>
	      </li>
	         <li class="nav-item active">
	        <a class="nav-link" href="list.jsp?campingitem_kind=600">  신발 </a>
	      </li>
	         <li class="nav-item active">
	        <a class="nav-link" href="list.jsp?campingitem_kind=700">  가방 </a>
	      </li>
	        <li class="nav-item active">
	        <a class="nav-link" href="list.jsp?campingitem_kind=800">  주변도구 </a>
	      </li>
	    </ul>
	  </div>
	</nav>
	  
<%
List<BuyDataBean> buyLists = null;
BuyDataBean buyList = null;
int count = 0;
int number = 0;
int total = 0;
long compareId=0;
long preId=0;

if(session.getAttribute("id")==null){
   response.sendRedirect("shopMain.jsp");        
}else{
   BuyDBBean buyProcess = BuyDBBean.getInstance();
   count = buyProcess.getListCount(buyer);

   if(count == 0){
%>

   
   <table> 
     <tr><td align="center" >구매목록이 없습니다.</td> </tr>
   </table>
      <input type="button" value="메인으로" 
         onclick="javascript:window.location='shopMain.jsp'">
<%
  }else{
    buyLists = buyProcess.getBuyList(buyer);
%>
    <h3><b>주문목록</b></h3>
    <table><tr><td>
<%
    for(int i=0;i<buyLists.size();i++){
       buyList = buyLists.get(i);
    	 
       if(i<buyLists.size()-1){
    	  BuyDataBean compare = buyLists.get(i+1);
    	  compareId = compare.getBuy_id();
    		 
    	  BuyDataBean pre = buyLists.get(buyLists.size()-2);
    	  preId = pre.getBuy_id();
       }  	 
%>
   <table> 
      <tr> 
        <td width="150">No.(구매날짜)</td>
        <td width="300">상품</td> 
        <td width="100">판매가격</td>
        <td width="50">수량</td> 
        <td width="150">금액</td>
      </tr>
      <tr> 
        <td align="center"  width="150"><%=buyList.getBuy_id()%></td> 
        <td  width="300" align="left">
           <img src="../photofile/<%=buyList.getCampingitem_image()%>" 
               border="0" width="30" height="50" align="middle">
             <%=buyList.getCampingitem_title()%>
        </td> 
        <td width="100">\<%=NumberFormat.getInstance().format(buyList.getBuy_price())%></td>
        <td width="50"><%=buyList.getBuy_count()%></td> 
        <td width="150" >
           <%total += buyList.getBuy_count()*buyList.getBuy_price();%>
           \<%=NumberFormat.getInstance().format(buyList.getBuy_count()*buyList.getBuy_price()) %>
       </td>
      </tr>
<%
    if( buyList.getBuy_id() != compareId || 
      (i == buyLists.size()-1) && preId != buyList.getBuy_id() ) {
%> 
      <tr>
       <td colspan="5" align="right">
         <b>총 금액 : \<%=NumberFormat.getInstance().format(total)%></b></td>
      </tr></table>
<% 
      compareId = buyList.getBuy_id();
       total = 0;
   }else{
%>
   </td></tr></table><br>
<%
   }
 }

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