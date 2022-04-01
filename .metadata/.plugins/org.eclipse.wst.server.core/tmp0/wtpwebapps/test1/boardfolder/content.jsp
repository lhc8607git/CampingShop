<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "libbean.BoardDBBean" %>
<%@ page import = "libbean.BoardDataBean" %>
<%@ page import = "java.text.SimpleDateFormat" %>
 

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


<%
   int num = Integer.parseInt(request.getParameter("num"));
   String pageNum = request.getParameter("pageNum");

   SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");

   try{
      BoardDBBean dbPro = BoardDBBean.getInstance(); 
      BoardDataBean article =  dbPro.getArticle(num);
  
	  int ref=article.getRef();
	  int re_step=article.getRe_step();
	  int re_level=article.getRe_level();
%>
<br>
<p>&nbsp;&nbsp;<b> <%=article.getWriter()%>님</b>이 작성하신 <b>'<%=article.getSubject()%>'</b> 입니다.</p>

<form>
<table class="table table-hover">  
  <tr height="30">
    <td align="center" class="table-warning">No</td>
    <td align="center" width="125" align="center">
	     <%=article.getNum()%></td>
    <td align="center" class="table-warning">조회수</td>
    <td align="center" width="125" align="center">
	     <%=article.getReadcount()%></td>
  </tr>
  <tr height="30">
    <td align="center" class="table-warning">작성자</td>
    <td align="center" width="125" align="center">
	     <%=article.getWriter()%></td>
    <td align="center" class="table-warning">날짜</td>
    <td align="center" width="125" align="center">
	     <%= sdf.format(article.getReg_date())%></td>
  </tr>
  <tr height="30">
    <td align="center" class="table-warning">제목</td>
    <td align="center" width="375" align="center" colspan="3">
	     <%=article.getSubject()%></td>
  </tr>
  <tr>
    <td align="center" class="table-warning">글내용</td>
    <td align="left" width="375" colspan="3">
           <pre><%=article.getContent()%></pre></td>
  </tr>
  <tr height="30">      
    <td colspan="4" class="table-light" align="right" > 
	  <input type="button" value="글수정" class="btn btn-outline-success"
       onclick="document.location.href='updateForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
	  <input type="button" value="글삭제"  class="btn btn-outline-success"
       onclick="document.location.href='deleteForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
      <input type="button" value="댓글쓰기" class="btn btn-outline-info" 
       onclick="document.location.href='writeForm.jsp?num=<%=num%>&ref=<%=ref%>&re_step=<%=re_step%>&re_level=<%=re_level%>'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
       <input type="button" value="목록보기" class="btn btn-outline-warning"
       onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">
    </td>
  </tr>
</table>    
<%
 }catch(Exception e){} 
 %>
</form>      
<br><br>
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