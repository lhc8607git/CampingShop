<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


<html>
<head>
<link href="../sourceboot/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>campingshop</title>

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



	<jsp:include page="top.jsp" flush="false" /> 
	<br><br>
	<jsp:include page="topmiddle.jsp" flush="false" /> 
	
	
	<div class="row">
	  <div class="col-xs-4 col-md-3">
	    <a href="#" class="thumbnail">
	      <img src="../photofile/4000001.jpg">
	    </a>
	  </div>
	  
	  <div class="col-xs-4 col-md-3">
	    <a href="#" class="thumbnail">
	      <img src="../photofile/1000003.jpg">
	    </a>
	  </div>
	  
	  <div class="col-xs-4 col-md-3">
	    <a href="#" class="thumbnail">
	      <img src="../photofile/2000001.jpg">
	    </a>
	  </div>
	  
	  <div class="col-xs-4 col-md-3">
	    <a href="#" class="thumbnail">
	      <img src="../photofile/6000001.jpg">
	    </a>
	  </div>
	</div>

	<br>
	

	<table>
		<tr>
		    <td width="180" valign="top">
		        <jsp:include page="left.jsp" flush="false" />
		    </td>
		    <td width="700" valign="top">
		        <jsp:include page="introList.jsp" flush="false"/>
		    </td>
		</tr>
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