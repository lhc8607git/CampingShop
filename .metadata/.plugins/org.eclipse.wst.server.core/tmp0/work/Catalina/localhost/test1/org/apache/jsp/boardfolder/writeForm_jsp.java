/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.41
 * Generated at: 2019-06-22 15:38:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.boardfolder;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class writeForm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = null;
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
      out.write("<html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>QnA</title>\r\n");
      out.write("<link href=\"../sourceboot/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
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
      out.write("<br>\r\n");
 
  int num = 0, ref = 1, re_step = 0, re_level = 0;
  String strV = "";
  try{
    if(request.getParameter("num")!=null){
	   num=Integer.parseInt(request.getParameter("num"));
	   ref=Integer.parseInt(request.getParameter("ref"));
	   re_step=Integer.parseInt(request.getParameter("re_step"));
	   re_level=Integer.parseInt(request.getParameter("re_level"));
    }

      out.write("\r\n");
      out.write("\r\n");
      out.write("<p>&nbsp;&nbsp;★  댓글 작성 중 ☆</p>\r\n");
      out.write("\r\n");
      out.write("<form method=\"post\" name=\"writeform\" \r\n");
      out.write("      action=\"writePro.jsp\" onsubmit=\"return writeSave()\">\r\n");
      out.write("<input type=\"hidden\" name=\"num\" value=\"");
      out.print(num);
      out.write("\">\r\n");
      out.write("<input type=\"hidden\" name=\"ref\" value=\"");
      out.print(ref);
      out.write("\">\r\n");
      out.write("<input type=\"hidden\" name=\"re_step\" value=\"");
      out.print(re_step);
      out.write("\">\r\n");
      out.write("<input type=\"hidden\" name=\"re_level\" value=\"");
      out.print(re_level);
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("\t\t<table class=\"table table-hover\">\r\n");
      out.write("\t\t\t  <tr>\r\n");
      out.write("\t\t\t    <td width=\"100\" class=\"table-warning\" align=\"center\">이 름</td>\r\n");
      out.write("\t\t\t     <td  width=\"400\" align=\"left\">\r\n");
      out.write("\t\t\t       <input type=\"text\" size=\"10\" maxlength=\"15\" class=\"form-control\" name=\"writer\" style=\"ime-mode:active;\"></td><!--active:한글-->\r\n");
      out.write("\t\t\t  </tr>\r\n");
      out.write("\t\t\t  <tr>\r\n");
      out.write("\t\t\t    <td width=\"100\" class=\"table-warning\" align=\"center\" >제 목</td>\r\n");
      out.write("\t\t\t    <td  width=\"330\" align=\"left\">\r\n");
      out.write("\t\t\t    ");

			      if(request.getParameter("num")==null) 
			    	 strV = "";
			      else
			    	 strV = "[답변]";
			    
      out.write("\r\n");
      out.write("\t\t\t    <input type=\"text\" size=\"40\" maxlength=\"50\" name=\"subject\" class=\"form-control\" value=\"");
      out.print(strV);
      out.write("\" style=\"ime-mode:active;\"></td>\t\r\n");
      out.write("\t\t\t  </tr>\r\n");
      out.write("\t\t\t  <tr>\r\n");
      out.write("\t\t\t    <td width=\"100\" class=\"table-warning\" align=\"center\">Email</td>\r\n");
      out.write("\t\t\t    <td  width=\"330\" align=\"left\">\r\n");
      out.write("\t\t\t       <input type=\"text\" size=\"40\" maxlength=\"30\" name=\"email\" class=\"form-control\" style=\"ime-mode:inactive;\" ></td><!--inactive:영문-->\r\n");
      out.write("\t\t\t  </tr>\r\n");
      out.write("\t\t\t  <tr>\r\n");
      out.write("\t\t\t    <td width=\"100\" class=\"table-warning\" align=\"center\">내 용</td>\r\n");
      out.write("\t\t\t    <td  width=\"330\" align=\"left\">\r\n");
      out.write("\t\t\t     <textarea name=\"content\" rows=\"13\" cols=\"40\" class=\"form-control\" style=\"ime-mode:active;\"></textarea> </td>\r\n");
      out.write("\t\t\t  </tr>\r\n");
      out.write("\t\t\t  <tr>\r\n");
      out.write("\t\t\t    <td width=\"100\" class=\"table-danger\" align=\"center\">비밀번호</td>\r\n");
      out.write("\t\t\t    <td  width=\"330\" align=\"left\">\r\n");
      out.write("\t\t\t     <input type=\"password\" size=\"8\" maxlength=\"12\" class=\"form-control\" name=\"passwd\" style=\"ime-mode:inactive;\"> \r\n");
      out.write("\t\t\t\t </td>\r\n");
      out.write("\t\t\t  </tr>\r\n");
      out.write("\t\t</table>   \r\n");
      out.write("\t\t \r\n");
      out.write("\t\t\t<br><Br><br>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t<nav class=\"navbar navbar-expand-lg navbar-light bg-light fixed-bottom\">\r\n");
      out.write("\t\t\t\t  \t<div class=\"text-right\" align=\"right\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" value=\"글등록\" class=\"btn btn-outline-success\">  \r\n");
      out.write("\t\t\t\t\t\t<input type=\"reset\" value=\"다시작성\"   class=\"btn btn-outline-info\">\r\n");
      out.write("\t\t\t\t\t\t <input type=\"button\" value=\"목록보기\" OnClick=\"window.location='list.jsp'\" class=\"btn btn-outline-warning\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</nav>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write(" ");

  }catch(Exception e){}

      out.write("     \r\n");
      out.write("</form>    \r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
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
