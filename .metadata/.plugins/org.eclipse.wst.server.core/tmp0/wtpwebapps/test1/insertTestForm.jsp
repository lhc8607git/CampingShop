<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<link href="sourceboot/css/bootstrap.min.css" rel="stylesheet">
<title>회원가입</title>
</head>
<body align="center">

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
   <a class="navbar-brand" href="shop/shopMain.jsp">캠핑</a>
  <button class="navbar-toggler collapsed" aria-expanded="false" aria-controls="navbarColor01" aria-label="Toggle navigation" type="button" data-target="#navbarColor01" data-toggle="collapse">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="manager/logon/managerLoginForm.jsp"> 관리자<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
         <a class="nav-link" href="shop/searchorder.jsp">주문조회</a>
      </li>
      <li class="nav-item">
       <a class="nav-link" href="boardfolder/list.jsp">Q&A 문의</a>
      </li>
    </ul>    
  </div>
</nav>


<br><br>
	
	
			<div class="text-center jumbotron">
		 		 <h2>사용할 ID를 확인해주세요!!!</h2> <br>
					<table align ="center">
						<tr>
							<form method="post" action="idconfirmpro.jsp">
							<td>
								<input type="text" name="confirmid" maxlength="50"   placeholder="ID" style="ime-mode:inactive;"><br></td>
						    </td>
						    <td>	
						    	<input type="submit" value="중복확인" class="btn btn-dark">
					    	</td>
					    	</form>		    	
					    </tr>	
					</table>
		    </div>			
					<br><br>
	
	
	
	
	<div class="text-center jumbotron">
		  <h2>회원가입</h2> <br>
		    <table align ="center">
			    <tr>
			    <form method="post" action="insertTestPro.jsp">
			        <td>ID</td> 
			        <td><input type="text" name="id" maxlength="50"   placeholder="ID" style="ime-mode:inactive;"><br></td>
			     </tr>
			
			      <tr>
			        <td>PASSWORD</td> <td><input type="password" name="passwd" maxlength="16" placeholder="Password"
			               style="ime-mode:inactive;"><br></td>
			       </tr>
			        <tr>
			          <td>이름</td> <td><input type="text" name="name" maxlength="10" 
			               style="ime-mode:inactive;"><br></td>
			          </tr>
			          <tr>
			            <td>우편주소</td> <td><input type="text" name="address_number" maxlength="10" 
			               style="ime-mode:inactive;"><br></td>
			            </tr>
			             <tr>
			             <td> 주소</td> <td><input type="text" name="address" maxlength="30"   
			               style="ime-mode:inactive;"><br></td>
			             </tr>
			             <tr>
			              <td>전화번호</td> <td><input type="text" name="tel" maxlength="14"   placeholder="031-###-####"
			               style="ime-mode:inactive;"><br></td>
			               </tr>
			              <tr>
			        <td> 핸드폰</td> <td><input type="text" name="phone_tel" maxlength="14"   placeholder="010-####-####"
			               style="ime-mode:inactive;"><br></td>
			             </tr>
			             
			             
			             
			             
			               <tr>
			        <td> 생년월일</td> <td><input type="text" name="birthday" maxlength="14"   placeholder="####-##-##"
			               style="ime-mode:inactive;"><br></td>
			             </tr>
			               <tr>
			        <td> 성별</td> <td><input type="text" name="sex" maxlength="14"   placeholder="남자  or 여자"
			               style="ime-mode:inactive;"><br></td>
			             </tr>
		             
		             
		             
		             
		       </table>        
		               <br>
		               
		               
            <table align="center">
            <tr>
            <td>
			        <input type="submit" value="입력완료" class="btn btn-dark">
			    </form>
			</td> 
			   
			 <td>
			     <form method="post" action="shop/shopMain.jsp">
					    	  <input type="submit" value="상점이동" class="btn btn-dark">
				</form>
			</td>
			</tr>
			</table>
	</div>
	
	<br>
	
  
    

      
    
  
  
  
  
</body>
</html>