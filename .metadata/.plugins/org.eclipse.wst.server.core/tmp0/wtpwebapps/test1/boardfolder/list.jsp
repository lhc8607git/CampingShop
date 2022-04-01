<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "libbean.BoardDBBean" %>
<%@ page import = "libbean.BoardDataBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>


<%!
    int pageSize = 10;
    SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<%
    String pageNum = request.getParameter("pageNum");

    if (pageNum == null) {
        pageNum = "1";
    }

    int currentPage = Integer.parseInt(pageNum);
    int startRow = (currentPage - 1) * pageSize + 1;     //--현 페이지 글목록에 표시할 시작 글번호 설정 (시작 글번호)
    int endRow = currentPage * pageSize;       //--현 페이지 글목록에 표시할 마지막 글번호를 설정하는 부분(마지막 글번호)
    int count = 0; 
    int number = 0;
    List<BoardDataBean> articleList = null; 
    
    BoardDBBean dbPro = BoardDBBean.getInstance();
    count = dbPro.getArticleCount();       //--------전체 레코드 수 얻어오는 부분
    
    
    if (count > 0) {
        articleList = dbPro.getArticles(startRow, pageSize);
    }

	number = count-(currentPage-1)*pageSize;
%>
<html>
<head>
<link href="../sourceboot/css/bootstrap.min.css" rel="stylesheet">
<title>QnA</title>
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
         <a class="nav-link" href="../shop/searchorder.jsp">주문조회</a>
      </li>
      <li class="nav-item">
       <a class="nav-link" href="list.jsp">Q&A 문의</a>
      </li>
    </ul>    
  </div>
</nav>
<br>
<p>&nbsp;&nbsp;★  QnA : <%=count%> ☆</p>




<% if (count == 0) { %>                               <% //게시판이  글이 없으면(레코드가 없으면)!!   뜨우는 부분 %>

<table class="table table-hover">
<tr>
    <td align="center">
            ●●○◑♣     0개     ◐☆★♣▥ ........... 
    </td>
</table>

<% } else {%>

<table class="table table-hover table-responsive"> 
	<thead>
	    <tr class="table-warning" height="30">               <% //게시판이  글이 있으면(레코드가 있으면)!!   뜨우는 부분 %>
	      <td scope="col" align="center"  width="50"  >No</td> 
	      <td scope="col" align="center"  width="250" >제목</td> 
	      <td scope="col" align="center"  width="100" >작성자</td>
	      <td scope="col" align="center"  width="150" >날짜</td> 
	      <td scope="col" align="center"  width="50" >조 회</td>       
	    </tr>
	</thead>
<%  
   for (int i = 0 ; i < articleList.size() ; i++) {
       BoardDataBean article = articleList.get(i);
%>
   <tr height="30">
    <td  width="50" align="center"> <%=number--%></td>
    <td  width="250" align="left">
<%
	int wid=0; 
	if(article.getRe_level()>0){
	   wid=5*(article.getRe_level());
%>
	  <img src="" width="<%=wid%>" height="16">
	  <img src="../photofile/re.png">
<%  }else{%>
	  <img src="images/level.png" width="<%=wid%>" height="16">
<%  }%>
           
      <a href="content.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">                <%//----------content.jsp로 이동해서 글내용을 볼 수 있게 한다 %>
           <%=article.getSubject()%></a> 
<% if(article.getReadcount()>=20){%>
         <img src="images/hot.gif" border="0"  height="16"><%}%> </td>
    <td width="100" align="center"> 
       <a href="mailto:<%=article.getEmail()%>">
                     <%=article.getWriter()%></a></td>
    <td width="150"  align="center"><%= sdf.format(article.getReg_date())%></td>
    <td width="50" align="center"><%=article.getReadcount()%></td>
   
  </tr>
<%}%>
</table>
<%}%>


 <div>
  <ul class="pagination">
<%                                          //------------------페이지 이동하는 부분
    if (count > 0) {
        int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage =1;
		
		if(currentPage % 5 != 0)
           startPage = (int)(currentPage/5)*5 + 1;
		else
           startPage = ((int)(currentPage/5)-1)*5 + 1;

		int pageBlock = 5;
        int endPage = startPage + pageBlock - 1;
        if (endPage > pageCount) endPage = pageCount;
        
        if (startPage > 5) { %>
        

  		 <li class="page-item">
          <a class="page-link" href="list.jsp?pageNum=<%= startPage - 5 %>">&laquo;</a>
         </li>
<%      }
        
        for (int i = startPage ; i <= endPage ; i++) {  %>
        <li class="page-item">
           <a class="page-link" href="list.jsp?pageNum=<%= i %>"><%= i %></a>
        </li>
<%      }
        
        if (endPage < pageCount) {  %>
        <li class="page-item">
         <a class="page-link" href="list.jsp?pageNum=<%= startPage + 5 %>">&raquo;</a>
        </li>

 
<%
        }
    }
%>
  </ul>
 </div>





<br><br><br><Br><br>
				
			<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-bottom">
			  	<div class="text-right" align="right">
					  <a href="writeForm.jsp" class="btn btn-outline-success">글작성</a>
				</div>
			</nav>
				


</body>

</html>