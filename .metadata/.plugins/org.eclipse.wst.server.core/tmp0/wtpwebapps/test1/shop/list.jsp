<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "libbean.ShopCampingitemDataBean" %>
<%@ page import = "libbean.ShopCampingitemDBBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.NumberFormat" %>



<%
  String campingitem_kind = request.getParameter("campingitem_kind");
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
	    
	    
	    
<table>
<tr>
<td width="180" valign="top">
  <jsp:include page="left.jsp" flush="false" />
</td>
 <td width="700">
        
<%
 List<ShopCampingitemDataBean> campingitemLists = null;
ShopCampingitemDataBean campingitemList = null;
 String campingitem_kindName="";
  
 ShopCampingitemDBBean campingitemProcess = ShopCampingitemDBBean.getInstance();
 
 campingitemLists = campingitemProcess.getcampings(campingitem_kind);
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
 else if(campingitem_kind.equals("all"))
	 campingitem_kindName="전체";
%>
 <h3><b><%=campingitem_kindName%>  목록</b></h3>
   
<%
 for(int i=0;i<campingitemLists.size();i++){
	 campingitemList = (ShopCampingitemDataBean)campingitemLists.get(i);
%>
  <table> 
    <tr height="30"> 
      <td rowspan="4"  width="100">
         <a href="campingContent.jsp?campingitem_id=<%=campingitemList.getCampingitem_id()%>&campingitem_kind=<%=campingitem_kind%>">
         <img src="../photofile/<%=campingitemList.getCampingitem_image()%>" border="0" width="60" height="90"></a></td> 
      <td width="350"><font size="+1"><b>
         <a href="campingContent.jsp?campingitem_id=<%=campingitemList.getCampingitem_id()%>&campingitem_kind=<%=campingitem_kind%>">
         <%=campingitemList.getCampingitem_title() %></a></b></font></td> 
      <td rowspan="4" width="100"  align="center"  valign="middle">
        <%if(campingitemList.getCampingitem_count()==0){ %>
              <b>일시품절</b>
        <%}else{ %>
              &nbsp;
        <%} %>
      </td>
    </tr>        
    <tr height="30"> 
       <td width="350">제조사 : <%=campingitemList.getCampingitem_makername()%></td> 
    </tr>
    <tr height="30"> 
       <td width="350">제조년 : <%=campingitemList.getCampingitem_launched()%></td>
    </tr>
    <tr height="30"> 
       <td width="350">정가 : <%=NumberFormat.getInstance().format(campingitemList.getCampingitem_price())%><br>
                     판매가 : <b><font color="red">
         <%=NumberFormat.getInstance().format((int)(campingitemList.getCampingitem_price()*((double)(100-campingitemList.getCampingitem_discount_rate())/100)))%>
         </font></b></td> 
    </tr> 
  </table>
  <br>
<%
 } 
%>
</td>
</tr>
</table>

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