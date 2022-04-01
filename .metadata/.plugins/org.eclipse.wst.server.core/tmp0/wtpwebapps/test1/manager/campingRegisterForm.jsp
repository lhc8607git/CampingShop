<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.Timestamp" %>



<%
   String managerId ="";
   try{
	   managerId = (String)session.getAttribute("managerId");
	   if(managerId==null || managerId.equals("")){
           response.sendRedirect("../logon/managerLoginForm.jsp");
	   }else{
%>
<html>
<head>
<title>상품등록</title>
<link href="../sourceboot/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  		<a class="navbar-brand" href="#">상품등록</a>
    		<div class="text-right" align="right">
		    	<form method="post" action="managerMain.jsp"> 
		   	    	<input type="submit" value="뒤로 가기" class="btn btn-dark">	
		    	</form>	
		    
	   	    </div>
	</nav>
<br><br><br><br><br>



			
		<form method="post" name="writeform" 
			     action="campingRegisterPro.jsp"  enctype="multipart/form-data">
			<table class="table table-hover">
			   <tr>
			    <td  width="100" class="table-success"" align="center">종류(품번)</td>
			    <td  width="400" align="left">
			       <div class="form-group">
				       <select name="campingitem_kind" class="custom-select">
				           <option value="100">랜턴 | 버너</option>       <!--Leather  -->
				           <option value="200">캠핑퍼니처</option>   <!--Gold  -->
				           <option value="300">침낭 | 매트</option>   <!--Silver  -->
				           <option value="400">텐트 | 천막</option>   <!--Black  -->
				           <option value="500">의류</option> 
				           <option value="600">신발</option> 
				           <option value="700">가방</option> 
				           <option value="800">주변 도구</option> 
				       </select>
			        </div>
			    </td>
			  </tr>
			  <tr>
			    <td  width="100" class="table-success" align="center">업체명</td>
			    <td  width="400" align="left">
			        <input type="text" size="50" maxlength="50" name="campingitem_makername" class="form-control"></td>
			  </tr>
			 
			  <tr>
			    <td  width="100" class="table-success" align="center">제품명</td>
			    <td  width="400" align="left">
			        <input type="text" size="50" maxlength="50" name="campingitem_title" class="form-control"></td>
			  </tr>
			  <tr>
			    <td  width="100"  class="table-success" align="center">가 격</td>
			    <td  width="400" align="left">
			        <input type="text" size="10" maxlength="20" name="campingitem_price" class="form-control" placeholder="#######"></td>
			  </tr>
			  <tr>
			    <td  width="100" class="table-success" align="center">수 량</td>
			    <td  width="400" align="left">
			        <input type="text" size="10" maxlength="5" name="campingitem_count" class="form-control" placeholder="#"></td>
			  </tr>
			  
			  <tr>
			    <td  width="100" class="table-success" align="center">출시년월</td>
			    <td  width="400" align="left">
			        <input type="text" size="10" maxlength="15" name="campingitem_launched" class="form-control" placeholder="##년-##월"></td>
			  </tr>
			  
			  <tr>
			    <td  width="100" class="table-success" align="center">재질</td>
			    <td  width="400" align="left">
			        <input type="text" size="10" maxlength="30" name="campingitem_material" class="form-control"></td>
			  </tr>
			  <tr>
			    <td  width="100" class="table-success" align="center">색상</td>
			    <td  width="400" align="left">
			        <input type="text" size="10" maxlength="30" name="campingitem_color" class="form-control"></td>
			  </tr>
			   <tr>
			    <td  width="100"  class="table-success" align="center">사이즈</td>
			    <td  width="400" align="left">
			        <input type="text" size="10" maxlength="40" name="campingitem_size" class="form-control"></td>
			  </tr>
			   <tr>
			    <td  width="100"  class="table-success" align="center">무 게</td>
			    <td  width="400" align="left">
			        <input type="text" size="10" maxlength="30" name="campingitem_weight" class="form-control" placeholder="g 단위"></td>
			  </tr>
			  <tr>
			    <td  width="100"  class="table-success" align="center">이미지</td>
			    <td  width="400" align="left">
			        <input type="file" name="campingitem_image"></td>
			  </tr>
			  <tr>
			    <td  width="100" class="table-success" align="center">설 명</td>
			    <td  width="400" align="left">
			     <textarea name="campingitem_content" rows="13" cols="40" class="form-control"></textarea> </td>
			  </tr>
			 <tr>
			    <td  width="100"  class="table-danger" align="center">할인율</td>
			    <td  width="400" align="left">
			        <input type="text" size="5" maxlength="4" name="campingitem_discount_rate" class="form-control" placeholder="%"></td>
			  </tr>  
		</table> 
		<br><Br><br>
			
				<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-bottom">
				  	<div class="text-right" align="right">
						<input type="submit" value="상품등록" onclick="checkForm(this.form)" class="btn btn-outline-success">  
						<input type="reset" value="다시작성"  class="btn btn-outline-warning">
					</div>
				</nav>
		</form>	



<% 

		}
	}catch(Exception e){
		e.printStackTrace();
	}
	   
%>


      
</body>
</html>







