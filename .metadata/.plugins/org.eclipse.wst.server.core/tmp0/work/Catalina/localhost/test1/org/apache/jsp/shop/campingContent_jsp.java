/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.41
 * Generated at: 2019-06-22 18:31:06 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.shop;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import libbean.ShopCampingitemDataBean;
import libbean.ShopCampingitemDBBean;
import java.text.NumberFormat;

public final class campingContent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes.add("libbean.ShopCampingitemDBBean");
    _jspx_imports_classes.add("libbean.ShopCampingitemDataBean");
    _jspx_imports_classes.add("java.text.NumberFormat");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");

 String campingitem_kind = request.getParameter("campingitem_kind");
 String campingitem_id = request.getParameter("campingitem_id");
 String id = "";
 int buy_price=0;
 try{
   if(session.getAttribute("id")==null)
     id="not";
   else
     id= (String)session.getAttribute("id");    
}catch(Exception e){}

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title></title>\r\n");
      out.write("<link href=\"../sourceboot/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("</head>\r\n");
      out.write("<body align=\"center\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-dark bg-primary\">\r\n");
      out.write("   <a class=\"navbar-brand\" href=\"shopMain.jsp\">캠핑</a>\r\n");
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
      out.write("      <a class=\"nav-link\" href=\"searchorder.jsp\">주문조회</a>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li class=\"nav-item\">\r\n");
      out.write("       <a class=\"nav-link\" href=\"../boardfolder/list.jsp\">Q&A 문의</a>\r\n");
      out.write("      </li>\r\n");
      out.write("    </ul>    \r\n");
      out.write("  </div>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"text-right\">\r\n");
      out.write("<br>\r\n");
      out.write("  \t\t<b>");
      out.print(session.getAttribute("id"));
      out.write("</b>님 \r\n");
      out.write("  \t\t\t\r\n");
      out.write(" \t\t\r\n");
      out.write("\t   \t<input type=\"button\"  value=\"장바구니\"  onclick=\"javascript:window.location='../shop/cartList.jsp?clock_kind=all'\" class=\"btn btn-info\">\r\n");
      out.write("\t    <input type=\"button\"  value=\"주문내역\"  onclick=\"javascript:window.location='../shop/buyList.jsp'\" class=\"btn btn-danger\">\t   \r\n");
      out.write("\t    <input type=\"button\" value=\"로그아웃\"  onclick=\"javascript:window.location='../shop/logout.jsp'\" class=\"btn btn-dark\">\r\n");
      out.write("\t    \r\n");
      out.write("\t    \r\n");
      out.write("\t    <br><br><br>\r\n");
      out.write("\t    \r\n");
      out.write("\t<nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\r\n");
      out.write("\t  <a class=\"navbar-brand\" href=\"list.jsp?campingitem_kind=all\">ALL</a>\r\n");
      out.write("\t  <div class=\"collapse navbar-collapse\">\r\n");
      out.write("\t    <ul class=\"navbar-nav mr-auto\">\r\n");
      out.write("\t      <li class=\"nav-item active\">\r\n");
      out.write("\t        <a class=\"nav-link\" href=\"list.jsp?campingitem_kind=100\">  랜턴|버너 </a>\r\n");
      out.write("\t      </li>\r\n");
      out.write("\t      <li class=\"nav-item active\">\r\n");
      out.write("\t        <a class=\"nav-link\" href=\"list.jsp?campingitem_kind=200\">  캠핑퍼니처 </a>\r\n");
      out.write("\t      </li>\r\n");
      out.write("\t      <li class=\"nav-item active\">\r\n");
      out.write("\t        <a class=\"nav-link\" href=\"list.jsp?campingitem_kind=300\">  침낭|매트 </a>\r\n");
      out.write("\t      </li>\r\n");
      out.write("\t      <li class=\"nav-item active\">\r\n");
      out.write("\t        <a class=\"nav-link\" href=\"list.jsp?campingitem_kind=400\">  텐트|천막 </a>\r\n");
      out.write("\t      </li>\r\n");
      out.write("\t         <li class=\"nav-item active\">\r\n");
      out.write("\t        <a class=\"nav-link\" href=\"list.jsp?campingitem_kind=500\">  의류 </a>\r\n");
      out.write("\t      </li>\r\n");
      out.write("\t         <li class=\"nav-item active\">\r\n");
      out.write("\t        <a class=\"nav-link\" href=\"list.jsp?campingitem_kind=600\">  신발 </a>\r\n");
      out.write("\t      </li>\r\n");
      out.write("\t         <li class=\"nav-item active\">\r\n");
      out.write("\t        <a class=\"nav-link\" href=\"list.jsp?campingitem_kind=700\">  가방 </a>\r\n");
      out.write("\t      </li>\r\n");
      out.write("\t        <li class=\"nav-item active\">\r\n");
      out.write("\t        <a class=\"nav-link\" href=\"list.jsp?campingitem_kind=800\">  주변도구 </a>\r\n");
      out.write("\t      </li>\r\n");
      out.write("\t    </ul>\r\n");
      out.write("\t  </div>\r\n");
      out.write("\t</nav>\r\n");
      out.write("\t    \r\n");
      out.write("\t    <br>\r\n");
      out.write("\r\n");

ShopCampingitemDataBean campingitemList = null;
String campingitem_kindName="";
  
ShopCampingitemDBBean campingitemProcess = ShopCampingitemDBBean.getInstance();
 
campingitemList = campingitemProcess.getcampingitem(Integer.parseInt(campingitem_id));
     
if(campingitem_kind.equals("100"))
	campingitem_kindName="랜턴|버너";
else if(campingitem_kind.equals("200"))
	campingitem_kindName="캠핑퍼니처";  
else if(campingitem_kind.equals("300"))
	campingitem_kindName="침낭|매트";
else if(campingitem_kind.equals("400"))
	campingitem_kindName="텐트|천막";
else if(campingitem_kind.equals("500"))
	campingitem_kindName="의류";
else if(campingitem_kind.equals("600"))
	campingitem_kindName="신발";
else if(campingitem_kind.equals("700"))
	campingitem_kindName="가방";
else if(campingitem_kind.equals("800"))
	campingitem_kindName="주변도구";



      out.write("\r\n");
      out.write("<form name=\"inform\" method=\"post\" action=\"cartInsert.jsp\">\r\n");
      out.write("<table> \r\n");
      out.write("   <tr height=\"30\"> \r\n");
      out.write("     <td rowspan=\"6\"  width=\"150\">\r\n");
      out.write("        <img src=\"../photofile/");
      out.print(campingitemList.getCampingitem_image());
      out.write("\" \r\n");
      out.write("             border=\"0\" width=\"150\" height=\"200\"></td> \r\n");
      out.write("     <td width=\"500\"><font size=\"+1\">\r\n");
      out.write("       <b>");
      out.print(campingitemList.getCampingitem_title() );
      out.write("</b></font></td>\r\n");
      out.write("   </tr> \r\n");
      out.write("   <tr><td width=\"500\">제조사 : ");
      out.print(campingitemList.getCampingitem_makername());
      out.write("</td></tr>\r\n");
      out.write("   <tr><td width=\"500\">제조년월 : ");
      out.print(campingitemList.getCampingitem_launched());
      out.write("</td></tr> \r\n");
      out.write("   <tr><td width=\"500\">사이즈 : ");
      out.print(campingitemList.getCampingitem_size());
      out.write("</td></tr>\r\n");
      out.write("   <tr><td width=\"500\">무게 : ");
      out.print(campingitemList.getCampingitem_weight());
      out.write("</td></tr>\r\n");
      out.write("   <tr><td width=\"500\">색상 : ");
      out.print(campingitemList.getCampingitem_color());
      out.write("</td></tr>\r\n");
      out.write("   <tr><td width=\"500\">남은 수량 : ");
      out.print(campingitemList.getCampingitem_count());
      out.write("</td></tr>\r\n");
      out.write("   <tr><td width=\"500\">정가 : ");
      out.print(NumberFormat.getInstance().format(campingitemList.getCampingitem_price()));
      out.write(" 원<br>\r\n");
      out.write("      ");
buy_price = (int)(campingitemList.getCampingitem_price()*((double)(100-campingitemList.getCampingitem_discount_rate())/100)) ;
      out.write("\r\n");
      out.write("            판매가 : <b><font color=\"red\">\r\n");
      out.write("            ");
      out.print(NumberFormat.getInstance().format((int)(buy_price)));
      out.write(" 원\r\n");
      out.write("            </font></b></td> \r\n");
      out.write("   <tr><td width=\"500\">수량 : <input type=\"text\" size=\"5\"name=\"buy_count\" value=\"1\"> 개\r\n");
      out.write(" ");

   if(id.equals("not")){
     if(campingitemList.getCampingitem_count()==0){
 
      out.write("\r\n");
      out.write("        <b>일시품절</b>\r\n");
  
     }           
  }else{ 
     if(campingitemList.getCampingitem_count()==0){

      out.write("\r\n");
      out.write("         <b>일시품절</b>\r\n");
      out.write("                           \r\n");
   }else{ 
      out.write("\t \r\n");
      out.write("       <input type=\"hidden\" name=\"campingitem_id\" value=\"");
      out.print(campingitem_id );
      out.write("\">\r\n");
      out.write("       <input type=\"hidden\" name=\"campingitem_image\" value=\"");
      out.print(campingitemList.getCampingitem_image());
      out.write("\">\r\n");
      out.write("       <input type=\"hidden\" name=\"campingitem_title\" value=\"");
      out.print(campingitemList.getCampingitem_title() );
      out.write("\">\r\n");
      out.write("       <input type=\"hidden\" name=\"buy_price\" value=\"");
      out.print(buy_price );
      out.write("\">\r\n");
      out.write("       <input type=\"hidden\" name=\"campingitem_kind\" value=\"");
      out.print(campingitem_kind );
      out.write("\">              \r\n");
      out.write("       <input type=\"submit\" value=\"장바구니 추가\" class=\"btn btn-dark\">\r\n");
}}
      out.write("\r\n");
      out.write("   <input type=\"button\" value=\"");
      out.print(campingitem_kindName);
      out.write(" 리스트\" \r\n");
      out.write("     onclick=\"javascript:window.location='list.jsp?campingitem_kind=");
      out.print(campingitem_kind);
      out.write("'\" class=\"btn btn-dark\">\r\n");
      out.write("   <input type=\"button\" value=\"NEW 리스트\" class=\"btn btn-dark\"\r\n");
      out.write("     onclick=\"javascript:window.location='shopMain.jsp'\">\r\n");
      out.write("   </td>\r\n");
      out.write("  </tr>         \r\n");
      out.write("  <tr>\r\n");
      out.write("    <td colspan=\"2\" align=\"left\">\r\n");
      out.write("       <br>");
      out.print(campingitemList.getCampingitem_content());
      out.write("</td>\r\n");
      out.write("  </tr> \r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("<br><br><br><Br><br><br>\r\n");
      out.write("\r\n");
      out.write("\t<table>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t    <td width=\"180\" valign=\"center\" halign=\"center\">\r\n");
      out.write("\t\t\t    <img src=\"logo2.PNG\" border=\"0\" width=\"110\" height=\"110\">\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t<td width=\"700\" valign=\"top\">\r\n");
      out.write("\t\t        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "bottom.jsp", out, false);
      out.write("\r\n");
      out.write("\t\t    </td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t</table>\r\n");
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
