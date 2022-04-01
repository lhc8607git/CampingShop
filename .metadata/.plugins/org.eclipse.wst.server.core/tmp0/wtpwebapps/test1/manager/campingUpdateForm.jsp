<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.Timestamp" %>
<%@ page import = "libbean.ShopCampingitemDBBean" %>
<%@ page import = "libbean.ShopCampingitemDataBean" %>

 
<%
String managerId ="";
try{
   managerId = (String)session.getAttribute("managerId");
   if(managerId==null || managerId.equals("")){
      response.sendRedirect("../logon/managerLoginForm.jsp");
}else{
%>
<%
int campingitem_id = Integer.parseInt(request.getParameter("campingitem_id"));
String campingitem_kind = request.getParameter("campingitem_kind");
try{
	ShopCampingitemDBBean campingProcess = ShopCampingitemDBBean.getInstance();
    ShopCampingitemDataBean camping =  campingProcess.getcampingitem(campingitem_id); 
%>
<html>
<head>
<title>상품수정</title>
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
	<br><br><br><br>
		
	<div class="text-right">
		<table>
		<tr>
			<td>
			  <form method="post" action="campingList.jsp?campingitem_kind=<%=campingitem_kind%>"> 
				  <input type="submit" value="선택한 분류 확인하기" class="btn btn-outline-success">	
			  </form>
			</td>
		 </tr>
		 </table>	  
	</div>
	


	
	
	<form method="post" name="writeform" 
	   action="campingUpdatePro.jsp"  enctype="multipart/form-data">
		<table class="table table-hover">
		   <tr>
		   
		   </tr>
		   <tr>
		    <td  width="100"  class="table-warning"" align="center">종류</td>
		    <td  width="400"  align="left">
		       <select name="campingitem_kind" class="custom-select">
		           <option value="100" 
		             <%if (camping.getCampingitem_kind().equals("100")) {%>selected<%} %>
		              >랜턴 | 버너</option>
		           <option value="200" 
		             <%if (camping.getCampingitem_kind().equals("200")) {%>selected<%} %>
		             >캠핑퍼니처</option>
		          <option value="300" 
		             <%if (camping.getCampingitem_kind().equals("300")) {%>selected<%} %>
		             >침낭 | 매트</option>
		          <option value="400" 
		             <%if (camping.getCampingitem_kind().equals("400")) {%>selected<%} %>
		             >텐트 | 천막</option>
		              <option value="500" 
		             <%if (camping.getCampingitem_kind().equals("500")) {%>selected<%} %>
		             >의류</option>
		              <option value="600" 
		             <%if (camping.getCampingitem_kind().equals("600")) {%>selected<%} %>
		             >신발</option>
		              <option value="700" 
		             <%if (camping.getCampingitem_kind().equals("700")) {%>selected<%} %>
		             >가방</option>
		              <option value="800" 
		             <%if (camping.getCampingitem_kind().equals("800")) {%>selected<%} %>
		             >주변 도구</option>
		       </select>
		    </td>
		  </tr>
		  <tr>
		    <td  width="100"  class="table-warning" align="center">업체명</td>
		    <td  width="400" align="left">
		        <input type="text" size="50" maxlength="50" name="campingitem_makername" 
		            value="<%=camping.getCampingitem_makername() %>">
		  </tr>
		  <tr>
		    <td  width="100"  class="table-warning" align="center">제품명</td>
		    <td  width="400" align="left">
		        <input type="text" size="50" maxlength="50" name="campingitem_title" 
		            value="<%=camping.getCampingitem_title() %>">
		       <input type="hidden" name="campingitem_id" value="<%=campingitem_id%>"> </td>
		  </tr>
		  <tr>
		    <td  width="100"  class="table-warning" align="center">가 격</td>
		    <td  width="400" align="left">
		        <input type="text" size="10" maxlength="9" name="campingitem_price" 
		          value="<%=camping.getCampingitem_price() %>">원</td>
		  </tr>
		  <tr>
		    <td  width="100"  class="table-warning" align="center">수량</td>
		    <td  width="400" align="left">
		        <input type="text" size="10" maxlength="5" name="campingitem_count" 
		          value="<%=camping.getCampingitem_count() %>">개</td>
		  </tr>
		     <tr>
		    <td  width="100"  class="table-warning" align="center">출시년월</td>
		    <td  width="400" align="left">
		        <input type="text" size="10" maxlength="5" name="campingitem_launched" 
		          value="<%=camping.getCampingitem_launched()%>"></td>
		  </tr>
		   <tr>
		    <td  width="100"  class="table-warning" align="center">재질</td>
		    <td  width="400" align="left">
		        <input type="text" size="10" maxlength="5" name="campingitem_material" 
		          value="<%=camping.getCampingitem_material()%>"></td>
		  </tr>
		  <tr>
		    <td  width="100"  class="table-warning" align="center">색상</td>
		    <td  width="400" align="left">
		        <input type="text" size="10" maxlength="30" name="campingitem_color" 
		          value="<%=camping.getCampingitem_color() %>"></td>
		  </tr>
		  
		    <tr>
		    <td  width="100"  class="table-warning" align="center">사이즈</td>
		    <td  width="400" align="left">
		        <input type="text" size="10" maxlength="30" name="campingitem_size" 
		          value="<%=camping.getCampingitem_weight()%>"></td>
		  </tr>
		  
		  
		  <tr>
		    <td  width="100"  class="table-warning" align="center">무게</td>
		    <td  width="400" align="left">
		        <input type="text" size="10" maxlength="30" name="campingitem_weight" 
		          value="<%=camping.getCampingitem_weight() %>">g 단위</td>
		  </tr>
		  
		  <tr>
		    <td  width="100"  class="table-warning" align="center">이미지</td>
		    <td  width="400" align="left">
		        <input type="file" name="campingitem_image">현재 이미지 :  <%=camping.getCampingitem_image() %></td>
		  </tr>
		  <tr>
		    <td  width="100"  class="table-warning" align="center">내 용</td>
		    <td  width="400" align="left">
		     <textarea name="campingitem_content " rows="13" 
		         cols="40"><%=camping.getCampingitem_content() %></textarea> </td>
		  </tr>
		 <tr>
		    <td  width="100"  class="table-warning" align="center">할인율</td>
		    <td  width="400" align="left">
		        <input type="text" size="5" maxlength="2" name="campingitem_discount_rate" 
		          value="<%=camping.getCampingitem_discount_rate() %>">%</td>
		  </tr>
		</table>
	<br><br><br>
	
	
				<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-bottom">
				  	<div class="text-right" align="right">
						<input type="button" value="수정" onclick="updateCheckForm(this.form)" class="btn btn-outline-success">  
						<input type="reset" value="다시작성"  class="btn btn-outline-warning">
					</div>
				</nav>

	         
	</form>   





<%
}catch(Exception e){
	e.printStackTrace();
}%>         
</body>
</html>
<% 
  }
}catch(Exception e){
	e.printStackTrace();
}
%>