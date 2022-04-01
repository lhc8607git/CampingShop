<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "libbean.ShopCampingitemDBBean" %>
<%@ page import = "libbean.ShopCampingitemDataBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>


<%
String managerId ="";
try{
	managerId = (String)session.getAttribute("managerId");
	if(managerId==null || managerId.equals("")){
       response.sendRedirect("../logon/managerLoginForm.jsp");
	}else{
%> 

<%!
    SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<%
    List<ShopCampingitemDataBean> campingList = null; 
    int number =0;
    String campingitem_kind="";
    
    campingitem_kind = request.getParameter("campingitem_kind");
 
    ShopCampingitemDBBean campingProcess = ShopCampingitemDBBean.getInstance();
    int count = campingProcess.getcampingCount();
    
    if (count > 0) {
    	campingList = campingProcess.getcampings(campingitem_kind);
    }
%>
<html>
<head>
<title>등록된 캠핑 물품 목록</title>
<link href="../sourceboot/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  		<a class="navbar-brand" href="#">상품관리</a>
    		<div class="text-right" align="right">
		    	<form method="post" action="managerMain.jsp"> 
		   	    	<input type="submit" value="뒤로 가기" class="btn btn-dark">	
		    	</form>	
		    
	   	    </div>
	</nav>
<br><br>
		
<%
   String camping_kindName="";
   if(campingitem_kind.equals("100")){
	   camping_kindName="랜턴 | 버너";
   }else if(campingitem_kind.equals("200")){
	   camping_kindName="캠핑퍼니처";  
   }else if(campingitem_kind.equals("300")){
	   camping_kindName="침낭 | 매트";
   }else if(campingitem_kind.equals("400")){
	   camping_kindName="텐트 | 천막";
   }else if(campingitem_kind.equals("500")){
	   camping_kindName="의류";
   }else if(campingitem_kind.equals("600")){
	   camping_kindName="신발";
   }else if(campingitem_kind.equals("700")){
	   camping_kindName="가방";
   }else if(campingitem_kind.equals("800")){
	   camping_kindName="주변 도구";
   }else if(campingitem_kind.equals("all")){
	   camping_kindName="전체";
   }
%>




<p>등록된 상품의 <%=camping_kindName%> 수 : 총 
<%if(campingitem_kind.equals("all")){%> 
    <%=count%> 개
<%}else{%>
    <%=campingList.size() %> 개
<%} %>
</p>


<%
  if (count == 0) {
%>
<table>
<tr>
   <td align="center">
           등록된 상품이 없습니다.
   </td>
</table>

<%} else {%>
<table class="table table-hover"> 
    <tr height="30" class="table-danger"> 
      <td align="center"  width="20">No</td> 
      <td align="center"  width="20">종류</td> 
      <td align="center"  width="20">업체명</td>
      <td align="center"  width="130">제품명</td>
      <td align="center"  width="50">가격</td> 
      <td align="center"  width="70">수량</td>
       <td align="center"  width="80">출시년월</td> 
      <td align="center"  width="100">재질</td>
      <td align="center"  width="50">색상</td>
       <td align="center"  width="50">사이즈</td>
      <td align="center"  width="40">무게</td>
      <td align="center"  width="50">이미지</td>
      <td align="center"  width="30">할인율</td>
      <td align="center"  width="50">수정</td>
      <td align="center"  width="50">삭제</td>         
    </tr>
<%  
    for (int i = 0 ; i <campingList.size() ; i++) {
      ShopCampingitemDataBean camping = 
    		  (ShopCampingitemDataBean)campingList.get(i);
%>
   <tr height="30">
      <td  align="center"  width="20"><%=++number%></td> 
      <td align="center"  width="20"><%=camping.getCampingitem_kind()%></td> 
      <td align="center"  width="20"><%=camping.getCampingitem_makername()%></td> 
      <td width="130" align="left">
           <%=camping.getCampingitem_title()%></td>
      <td width="50" align="center" ><%=camping.getCampingitem_price()%>원</td> 
      <td width="70" align="center" >
	      <% if(camping.getCampingitem_count()==0) {%>
	         <font color="red"><%="일시품절"%></font>
	      <% }else{ %>
	         <%=camping.getCampingitem_count()%>
	      <%} %>
      </td> 
      <td width="80" align="center" ><%=camping.getCampingitem_launched()%></td>
      <td width="100" align="center" ><%= camping.getCampingitem_material() %></td>
      <td width="100" align="center" ><%=camping.getCampingitem_color()%></td>
      <td width="100" align="center" ><%=camping.getCampingitem_size()%></td>
      <td width="40" align="center" ><%=camping.getCampingitem_weight()%>g</td>
      <td width="50" align="center" ><%=camping.getCampingitem_image()%></td>
      <td width="30" align="center" ><%=camping.getCampingitem_discount_rate()%>%</td>
      
    
      <td width="50" align="center" >
         
         <form method="post" action="campingUpdateForm.jsp?campingitem_id=<%=camping.getCampingitem_id()%>&campingitem_kind=<%=camping.getCampingitem_kind()%>"> 
		       <input type="submit" value="수정" class="btn btn-outline-success">	
		    </form>	
	</td>    
		     
		    
      <td width="50" align="center" >
   			<form method="post" action="campingDeleteForm.jsp?campingitem_id=<%=camping.getCampingitem_id()%>&campingitem_kind=<%=camping.getCampingitem_kind()%>"> 
		       <input type="submit" value="삭제" class="btn btn-outline-warning">	
		    </form>	      

   </td>  
          
   </tr>
<%}%>
</table>
<%}%>



</body>
</html>

<% 
   }
}catch(Exception e){
   e.printStackTrace();
}
%>