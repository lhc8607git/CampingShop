/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.41
 * Generated at: 2019-06-09 17:50:03 UTC
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

public final class introList_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title></title>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<h3>    Update 물품</h3>\r\n");

ShopCampingitemDataBean campingitemLists[] = null;
  int number =0;
  String campingitem_kindName="";
  
  ShopCampingitemDBBean campingitemProcess = ShopCampingitemDBBean.getInstance();
  for(int i=1; i<=3;i++){
	  campingitemLists = campingitemProcess.getcampings(i+"00",3);
     
     if(campingitemLists[0].getCampingitem_kind().equals("100")){
    	 campingitem_kindName="랜턴|버너";
     }else if(campingitemLists[0].getCampingitem_kind().equals("200")){
    	 campingitem_kindName="캠핑퍼니처";  
     }else if(campingitemLists[0].getCampingitem_kind().equals("300")){
    	 campingitem_kindName="침낭|매트";
     }else if(campingitemLists[0].getCampingitem_kind().equals("400")){
    	 campingitem_kindName="텐트|천막";
     }else if(campingitemLists[0].getCampingitem_kind().equals("500")){
    	 campingitem_kindName="의류";
     }else if(campingitemLists[0].getCampingitem_kind().equals("600")){
    	 campingitem_kindName="신발";
     }else if(campingitemLists[0].getCampingitem_kind().equals("700")){
    	 campingitem_kindName="가방";
     }else if(campingitemLists[0].getCampingitem_kind().equals("800")){
    	 campingitem_kindName="주변도구";
     }

      out.write("\r\n");
      out.write("  <br><font size=\"+1\"><b>--\r\n");
      out.write("  <a href=\"list.jsp?campingitem_kind=");
      out.print(campingitemLists[0].getCampingitem_kind());
      out.write('"');
      out.write('>');
      out.print(campingitem_kindName);
      out.write("</a>\r\n");
      out.write("  --</b></font>\r\n");
             
  for(int j=0;j<campingitemLists.length;j++){

      out.write("\r\n");
      out.write("    <table > \r\n");
      out.write("      <tr height=\"30\"> \r\n");
      out.write("        <td rowspan=\"4\"  width=\"100\">\r\n");
      out.write("        <a href=\"campingContent.jsp?campingitem_id=");
      out.print(campingitemLists[j].getCampingitem_id());
      out.write("&campingitem_kind=");
      out.print(campingitemLists[0].getCampingitem_kind());
      out.write("\">\r\n");
      out.write("             <img src=\"../photofile/");
      out.print(campingitemLists[j].getCampingitem_image());
      out.write("\"  \r\n");
      out.write("             border=\"0\" width=\"60\" height=\"90\"></a></td> \r\n");
      out.write("       <td width=\"350\"><font size=\"+1\"><b>\r\n");
      out.write("          <a href=\"campingContent.jsp?campingitem_id=");
      out.print(campingitemLists[j].getCampingitem_id());
      out.write("&campingitem_kind=");
      out.print(campingitemLists[0].getCampingitem_kind());
      out.write("\">\r\n");
      out.write("              ");
      out.print(campingitemLists[j].getCampingitem_title() );
      out.write("</a></b></font></td> \r\n");
      out.write("       <td rowspan=\"4\" width=\"100\">\r\n");
      out.write("          ");
if(campingitemLists[j].getCampingitem_count()==0){ 
      out.write("\r\n");
      out.write("              <b>일시품절</b>\r\n");
      out.write("          ");
}else{ 
      out.write("\r\n");
      out.write("               &nbsp;\r\n");
      out.write("          ");
} 
      out.write("\r\n");
      out.write("       </td>\r\n");
      out.write("     </tr>        \r\n");
      out.write("     <tr height=\"30\"> \r\n");
      out.write("       <td width=\"350\">제조사 : ");
      out.print(campingitemLists[j].getCampingitem_makername());
      out.write("</td> \r\n");
      out.write("     </tr>\r\n");
      out.write("     <tr height=\"30\"> \r\n");
      out.write("       <td width=\"350\">수량 : ");
      out.print(campingitemLists[j].getCampingitem_count());
      out.write("</td>\r\n");
      out.write("     </tr>\r\n");
      out.write("     <tr height=\"30\"> \r\n");
      out.write("       <td width=\"350\">정가 :");
      out.print(NumberFormat.getInstance().format(campingitemLists[j].getCampingitem_price()));
      out.write("원<br>\r\n");
      out.write("                판매가 : <b><font color=\"red\">\r\n");
      out.write("       ");
      out.print(NumberFormat.getInstance().format((int)(campingitemLists[j].getCampingitem_price()*((double)(100-campingitemLists[j].getCampingitem_discount_rate())/100))));
      out.write("\r\n");
      out.write("            </font></b>원</td> \r\n");
      out.write("     </tr> \r\n");
      out.write("     </table>\r\n");
      out.write("     <br>\r\n");

  }
}

      out.write("\r\n");
      out.write("\r\n");
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
