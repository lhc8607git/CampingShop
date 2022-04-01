<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<%
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");

%>
<html>
<head>
<title>QnA</title>
<link href="../sourceboot/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript">  
 <!--    
  function deleteSave(){	
	if(!document.delForm.passwd.value){
	   alert("비밀번호를 입력하십시요.");
	   document.delForm.passwd.focus();
	   return false;
    }
  }    
-->
</script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
   <a class="navbar-brand" href="../shop/shopMain.jsp">캠핑</a>
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
         <a class="nav-link" href="#">고객후기</a>
      </li>
      <li class="nav-item">
       <a class="nav-link" href="list.jsp">Q&A 문의</a>
      </li>
    </ul>    
  </div>
</nav>


<br>

<p>&nbsp;&nbsp;★  글 삭제 중 ☆</p>


<form method="POST" name="delForm" 
	   action="deletePro.jsp?pageNum=<%=pageNum%>" 
	   onsubmit="return deleteSave()"> 
	 <table class="table table-hover">
		  <tr height="30" align="center" class="table-warning">
		     <td align=center><b>비밀번호를 입력해 주세요.</b></td>
		  </tr>
		  <tr align="center" class="table-warning">
		     <td align=center >비밀번호 :   
		       <input type="password" name="passwd" size="8" maxlength="12">
			   <input type="hidden" name="num" value="<%=num%>">
			 </td>
		 </tr>
		 <tr height="30" align="center" class="table-light">
		    <td align=center>
		      <input type="submit" value="글삭제"  class="btn btn-outline-success">
		      <input type="button" value="글목록" onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'" class="btn btn-outline-warning">     
		   </td>
		 </tr>  
	</table> 
	</form>
	
	<br><br><br><br><br>
	<table>
		<tr>
		    <td width="180" valign="center" halign="center">
			    <img src="../shop/logo2.PNG" border="0" width="110" height="110">
			</td>
			<td width="700" valign="top">
		        <jsp:include page="../shop/bottom.jsp" flush="false" />
		    </td>
		</tr>
	</table>
<br>	
	
</body>
</html>