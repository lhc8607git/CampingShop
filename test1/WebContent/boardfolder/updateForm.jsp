<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "libbean.BoardDBBean" %>
<%@ page import = "libbean.BoardDataBean" %>

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
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");
  try{
      BoardDBBean dbPro = BoardDBBean.getInstance(); 
      BoardDataBean article =  dbPro.updateGetArticle(num);

%>

 <p> <b>&nbsp;&nbsp; <%=article.getWriter()%>님</b>이 작성하신 <b>'<%=article.getSubject()%>'</b> 입니다. ★  글 수정 중 ☆</p>

<form method="post" name="writeform" 
action="updatePro.jsp?pageNum=<%=pageNum%>" onsubmit="return writeSave()">
<table class="table table-hover">
  <tr>
    <td  width="70" align="center" class="table-warning">이 름</td>
    <td align="left" width="330">
       <input type="text" size="10" maxlength="10" name="writer" 
         value="<%=article.getWriter()%>" style="ime-mode:active;">
	   <input type="hidden" name="num" value="<%=article.getNum()%>"></td>

  </tr>
  <tr>
    <td  width="70" align="center" class="table-warning">제 목</td>
    <td align="left" width="330">
       <input type="text" size="40" maxlength="50" name="subject"
        value="<%=article.getSubject()%>" style="ime-mode:active;"></td>
  </tr>
  <tr>
    <td  width="70" align="center" class="table-warning">Email</td>
    <td align="left" width="330">
       <input type="text" size="40" maxlength="30" name="email" 
        value="<%=article.getEmail()%>" style="ime-mode:inactive;"></td>
  </tr>
  <tr>
    <td  width="70" align="center" class="table-warning">내 용</td>
    <td align="left" width="330">
     <textarea name="content" rows="13" cols="40" 
       style="ime-mode:active;"><%=article.getContent()%></textarea></td>
  </tr>
   <tr>
 	<td  width="70" align="center" class="table-warning">비밀번호</td>
    <td align="left" width="330" >
     <input type="password" size="8" maxlength="12" 
               name="passwd" style="ime-mode:inactive;">
	 </td>
 </tr>
  <tr>      
   <td colspan=2 align="center" class="table-light"> 
     <input type="submit" value="글수정" class="btn btn-outline-success">  
     <input type="reset" value="다시작성" class="btn btn-outline-success">
     <input type="button" value="목록보기" class="btn btn-outline-warning"
       onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">
   </td>
 </tr>

 </table>
</form>
<%
}catch(Exception e){}%>      
      
</body>
</html>