<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<html>
<head>
<title>QnA</title>
<link href="../sourceboot/css/bootstrap.min.css" rel="stylesheet">

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
<% 
  int num = 0, ref = 1, re_step = 0, re_level = 0;
  String strV = "";
  try{
    if(request.getParameter("num")!=null){
	   num=Integer.parseInt(request.getParameter("num"));
	   ref=Integer.parseInt(request.getParameter("ref"));
	   re_step=Integer.parseInt(request.getParameter("re_step"));
	   re_level=Integer.parseInt(request.getParameter("re_level"));
    }
%>

<p>&nbsp;&nbsp;★  댓글 작성 중 ☆</p>

<form method="post" name="writeform" 
      action="writePro.jsp" onsubmit="return writeSave()">
<input type="hidden" name="num" value="<%=num%>">
<input type="hidden" name="ref" value="<%=ref%>">
<input type="hidden" name="re_step" value="<%=re_step%>">
<input type="hidden" name="re_level" value="<%=re_level%>">

		<table class="table table-hover">
			  <tr>
			    <td width="100" class="table-warning" align="center">이 름</td>
			     <td  width="400" align="left">
			       <input type="text" size="10" maxlength="15" class="form-control" name="writer" style="ime-mode:active;"></td><!--active:한글-->
			  </tr>
			  <tr>
			    <td width="100" class="table-warning" align="center" >제 목</td>
			    <td  width="330" align="left">
			    <%
			      if(request.getParameter("num")==null) 
			    	 strV = "";
			      else
			    	 strV = "[답변]";
			    %>
			    <input type="text" size="40" maxlength="50" name="subject" class="form-control" value="<%=strV%>" style="ime-mode:active;"></td>	
			  </tr>
			  <tr>
			    <td width="100" class="table-warning" align="center">Email</td>
			    <td  width="330" align="left">
			       <input type="text" size="40" maxlength="30" name="email" class="form-control" style="ime-mode:inactive;" ></td><!--inactive:영문-->
			  </tr>
			  <tr>
			    <td width="100" class="table-warning" align="center">내 용</td>
			    <td  width="330" align="left">
			     <textarea name="content" rows="13" cols="40" class="form-control" style="ime-mode:active;"></textarea> </td>
			  </tr>
			  <tr>
			    <td width="100" class="table-danger" align="center">비밀번호</td>
			    <td  width="330" align="left">
			     <input type="password" size="8" maxlength="12" class="form-control" name="passwd" style="ime-mode:inactive;"> 
				 </td>
			  </tr>
		</table>   
		 
			<br><Br><br>
			
				<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-bottom">
				  	<div class="text-right" align="right">
						<input type="submit" value="글등록" class="btn btn-outline-success">  
						<input type="reset" value="다시작성"   class="btn btn-outline-info">
						 <input type="button" value="목록보기" OnClick="window.location='list.jsp'" class="btn btn-outline-warning">
					</div>
				</nav>
		
	
		
		
 <%
  }catch(Exception e){}
%>     
</form>    
</body>

</html>