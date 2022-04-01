<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제성공</title>
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
       <a class="nav-link" href="#">주문조회</a>
      </li>
      <li class="nav-item">
       <a class="nav-link" href="../boardfolder/list.jsp">Q&A 문의</a>
      </li>
    </ul>    
  </div>
</nav>

	<jsp:include page="top.jsp" flush="false" /> 
	<br><br>
		<jsp:include page="topmiddle.jsp" flush="false" /> 

<br><br>


<div align="center">
<div class="card border-success mb-3" style="max-width: 20rem;" align="center">
  <div class="card-header">결제요청</div>
  <div class="card-body">
    <h4 class="card-title">결제 Success.</h4>
    <p class="card-text"></p>
  </div>
</div>
</div>


<br><Br><Br><br>
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
