/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.41
 * Generated at: 2019-06-22 15:37:57 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.boardfolder;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import libbean.BoardDBBean;
import libbean.BoardDataBean;
import java.text.SimpleDateFormat;

public final class content_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("libbean.BoardDataBean");
    _jspx_imports_classes.add("java.text.SimpleDateFormat");
    _jspx_imports_classes.add("libbean.BoardDBBean");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>QnA</title>\r\n");
      out.write("<link href=\"../sourceboot/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-dark bg-primary\">\r\n");
      out.write("   <a class=\"navbar-brand\" href=\"../shop/shopMain.jsp\">캠핑</a>\r\n");
      out.write("  <button class=\"navbar-toggler collapsed\" aria-expanded=\"false\" aria-controls=\"navbarColor01\" aria-label=\"Toggle navigation\" type=\"button\" data-target=\"#navbarColor01\" data-toggle=\"collapse\">\r\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("  </button>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarColor01\">\r\n");
      out.write("    <ul class=\"navbar-nav mr-auto\">\r\n");
      out.write("      <li class=\"nav-item active\">\r\n");
      out.write("        <a class=\"nav-link\" href=\"../manager/logon/managerLoginForm.jsp\"> 관리자<span class=\"sr-only\">(current)</span></a>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li class=\"nav-item\">\r\n");
      out.write("       <a class=\"nav-link\" href=\"#\">주문조회</a>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li class=\"nav-item\">\r\n");
      out.write("         <a class=\"nav-link\" href=\"#\">고객후기</a>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li class=\"nav-item\">\r\n");
      out.write("       <a class=\"nav-link\" href=\"list.jsp\">Q&A 문의</a>\r\n");
      out.write("      </li>\r\n");
      out.write("    </ul>    \r\n");
      out.write("  </div>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("\r\n");

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

      out.write("\r\n");
      out.write("<br>\r\n");
      out.write("<p>&nbsp;&nbsp;<b> ");
      out.print(article.getWriter());
      out.write("님</b>이 작성하신 <b>'");
      out.print(article.getSubject());
      out.write("'</b> 입니다.</p>\r\n");
      out.write("\r\n");
      out.write("<form>\r\n");
      out.write("<table class=\"table table-hover\">  \r\n");
      out.write("  <tr height=\"30\">\r\n");
      out.write("    <td align=\"center\" class=\"table-warning\">No</td>\r\n");
      out.write("    <td align=\"center\" width=\"125\" align=\"center\">\r\n");
      out.write("\t     ");
      out.print(article.getNum());
      out.write("</td>\r\n");
      out.write("    <td align=\"center\" class=\"table-warning\">조회수</td>\r\n");
      out.write("    <td align=\"center\" width=\"125\" align=\"center\">\r\n");
      out.write("\t     ");
      out.print(article.getReadcount());
      out.write("</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr height=\"30\">\r\n");
      out.write("    <td align=\"center\" class=\"table-warning\">작성자</td>\r\n");
      out.write("    <td align=\"center\" width=\"125\" align=\"center\">\r\n");
      out.write("\t     ");
      out.print(article.getWriter());
      out.write("</td>\r\n");
      out.write("    <td align=\"center\" class=\"table-warning\">날짜</td>\r\n");
      out.write("    <td align=\"center\" width=\"125\" align=\"center\">\r\n");
      out.write("\t     ");
      out.print( sdf.format(article.getReg_date()));
      out.write("</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr height=\"30\">\r\n");
      out.write("    <td align=\"center\" class=\"table-warning\">제목</td>\r\n");
      out.write("    <td align=\"center\" width=\"375\" align=\"center\" colspan=\"3\">\r\n");
      out.write("\t     ");
      out.print(article.getSubject());
      out.write("</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td align=\"center\" class=\"table-warning\">글내용</td>\r\n");
      out.write("    <td align=\"left\" width=\"375\" colspan=\"3\">\r\n");
      out.write("           <pre>");
      out.print(article.getContent());
      out.write("</pre></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr height=\"30\">      \r\n");
      out.write("    <td colspan=\"4\" class=\"table-light\" align=\"right\" > \r\n");
      out.write("\t  <input type=\"button\" value=\"글수정\" class=\"btn btn-outline-success\"\r\n");
      out.write("       onclick=\"document.location.href='updateForm.jsp?num=");
      out.print(article.getNum());
      out.write("&pageNum=");
      out.print(pageNum);
      out.write("'\">\r\n");
      out.write("\t   &nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t  <input type=\"button\" value=\"글삭제\"  class=\"btn btn-outline-success\"\r\n");
      out.write("       onclick=\"document.location.href='deleteForm.jsp?num=");
      out.print(article.getNum());
      out.write("&pageNum=");
      out.print(pageNum);
      out.write("'\">\r\n");
      out.write("\t   &nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("      <input type=\"button\" value=\"댓글쓰기\" class=\"btn btn-outline-info\" \r\n");
      out.write("       onclick=\"document.location.href='writeForm.jsp?num=");
      out.print(num);
      out.write("&ref=");
      out.print(ref);
      out.write("&re_step=");
      out.print(re_step);
      out.write("&re_level=");
      out.print(re_level);
      out.write("'\">\r\n");
      out.write("\t   &nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("       <input type=\"button\" value=\"목록보기\" class=\"btn btn-outline-warning\"\r\n");
      out.write("       onclick=\"document.location.href='list.jsp?pageNum=");
      out.print(pageNum);
      out.write("'\">\r\n");
      out.write("    </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>    \r\n");

 }catch(Exception e){} 
 
      out.write("\r\n");
      out.write("</form>      \r\n");
      out.write("<br><br>\r\n");
      out.write("\t<table>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t    <td width=\"180\" valign=\"center\" halign=\"center\">\r\n");
      out.write("\t\t\t    <img src=\"../shop/logo2.PNG\" border=\"0\" width=\"110\" height=\"110\">\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t<td width=\"700\" valign=\"top\">\r\n");
      out.write("\t\t        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../shop/bottom.jsp", out, false);
      out.write("\r\n");
      out.write("\t\t    </td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("<br>\t\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
