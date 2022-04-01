<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "libbean.ShopCampingitemDataBean" %>
<%@ page import = "libbean.ShopCampingitemDBBean" %>
<%@ page import = "java.text.NumberFormat" %>


 
<%
 String campingitem_kind = request.getParameter("campingitem_kind");
 String campingitem_id = request.getParameter("campingitem_id");
 String id = "";
 int buy_price=0;
 try{
   if(session.getAttribute("id")==null)
     id="not";
   else
     id= (String)session.getAttribute("id");    
}catch(Exception e){}
%>

<html>
<head>
<title></title>
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
	    
	    
	    <br><br><br>
	    
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
	    
	    <br>

<%
ShopCampingitemDataBean campingitemList = null;
String campingitem_kindName="";
  
ShopCampingitemDBBean campingitemProcess = ShopCampingitemDBBean.getInstance();
 
campingitemList = campingitemProcess.getcampingitem(Integer.parseInt(campingitem_id));
     
if(campingitem_kind.equals("100"))
	campingitem_kindName="랜턴|버너";
else if(campingitem_kind.equals("200"))
	campingitem_kindName="캠핑퍼니처";  
else if(campingitem_kind.equals("300"))
	campingitem_kindName="침낭|매트";
else if(campingitem_kind.equals("400"))
	campingitem_kindName="텐트|천막";
else if(campingitem_kind.equals("500"))
	campingitem_kindName="의류";
else if(campingitem_kind.equals("600"))
	campingitem_kindName="신발";
else if(campingitem_kind.equals("700"))
	campingitem_kindName="가방";
else if(campingitem_kind.equals("800"))
	campingitem_kindName="주변도구";


%>
<form name="inform" method="post" action="cartInsert.jsp">
<table> 
   <tr height="30"> 
     <td rowspan="6"  width="150">
        <img src="../photofile/<%=campingitemList.getCampingitem_image()%>" 
             border="0" width="150" height="200"></td> 
     <td width="500"><font size="+1">
       <b><%=campingitemList.getCampingitem_title() %></b></font></td>
   </tr> 
   <tr><td width="500">제조사 : <%=campingitemList.getCampingitem_makername()%></td></tr>
   <tr><td width="500">제조년월 : <%=campingitemList.getCampingitem_launched()%></td></tr> 
   <tr><td width="500">사이즈 : <%=campingitemList.getCampingitem_size()%></td></tr>
   <tr><td width="500">무게 : <%=campingitemList.getCampingitem_weight()%></td></tr>
   <tr><td width="500">색상 : <%=campingitemList.getCampingitem_color()%></td></tr>
   <tr><td width="500">남은 수량 : <%=campingitemList.getCampingitem_count()%></td></tr>
   <tr><td width="500">정가 : <%=NumberFormat.getInstance().format(campingitemList.getCampingitem_price())%> 원<br>
      <%buy_price = (int)(campingitemList.getCampingitem_price()*((double)(100-campingitemList.getCampingitem_discount_rate())/100)) ;%>
            판매가 : <b><font color="red">
            <%=NumberFormat.getInstance().format((int)(buy_price))%> 원
            </font></b></td> 
   <tr><td width="500">수량 : <input type="text" size="5"name="buy_count" value="1"> 개
 <%
   if(id.equals("not")){
     if(campingitemList.getCampingitem_count()==0){
 %>
        <b>일시품절</b>
<%  
     }           
  }else{ 
     if(campingitemList.getCampingitem_count()==0){
%>
         <b>일시품절</b>
                           
<%   }else{ %>	 
       <input type="hidden" name="campingitem_id" value="<%=campingitem_id %>">
       <input type="hidden" name="campingitem_image" value="<%=campingitemList.getCampingitem_image()%>">
       <input type="hidden" name="campingitem_title" value="<%=campingitemList.getCampingitem_title() %>">
       <input type="hidden" name="buy_price" value="<%=buy_price %>">
       <input type="hidden" name="campingitem_kind" value="<%=campingitem_kind %>">              
       <input type="submit" value="장바구니 추가" class="btn btn-dark">
<%}}%>
   <input type="button" value="<%=campingitem_kindName%> 리스트" 
     onclick="javascript:window.location='list.jsp?campingitem_kind=<%=campingitem_kind%>'" class="btn btn-dark">
   <input type="button" value="NEW 리스트" class="btn btn-dark"
     onclick="javascript:window.location='shopMain.jsp'">
   </td>
  </tr>         
  <tr>
    <td colspan="2" align="left">
       <br><%=campingitemList.getCampingitem_content()%></td>
  </tr> 
</table>
</form>
<br><br><br><Br><br><br>

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