/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.41
 * Generated at: 2019-06-22 18:27:40 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.shop;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import libbean.BuyDBBean;
import java.util.ArrayList;
import libbean.BuyDataBean;
import java.sql.*;
import java.sql.Timestamp;
import java.util.List;
import libbean.ShopCampingitemDataBean;

public final class searchorderpro_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("libbean.ShopCampingitemDataBean");
    _jspx_imports_classes.add("java.sql.Timestamp");
    _jspx_imports_classes.add("libbean.BuyDBBean");
    _jspx_imports_classes.add("libbean.BuyDataBean");
    _jspx_imports_classes.add("java.util.ArrayList");
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
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("    ");
 request.setCharacterEncoding("utf-8");
    
      String searchorderNo = request.getParameter("searchorderNo");
      
      List<BuyDataBean> campingitemList=null;
      int number=0;
      
      out.write("\r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<link href=\"../sourceboot/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<title>주문조회 처리</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body align=\"center\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
      out.write("       <a class=\"nav-link\" href=\"#\">주문조회</a>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li class=\"nav-item\">\r\n");
      out.write("       <a class=\"nav-link\" href=\"../boardfolder/list.jsp\">Q&A 문의</a>\r\n");
      out.write("      </li>\r\n");
      out.write("    </ul>    \r\n");
      out.write("  </div>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "top.jsp", out, false);
      out.write(" \r\n");
      out.write("\t<br><br>\r\n");
      out.write("\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "topmiddle.jsp", out, false);
      out.write(" \r\n");
      out.write("\r\n");
      out.write("<br><br>\r\n");
      out.write("\r\n");
 


Connection conn=null;
PreparedStatement pstmt=null;
String str="";
ResultSet rs=null;
String idresult="";
try{
	 String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
  String dbId="jspid";
  String dbPass="jsppass";
	 
	 Class.forName("com.mysql.jdbc.Driver");
	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	
	 
	
	 
	 String sql= "select * from buy where buy_id=?";
	 pstmt=conn.prepareStatement(sql);
	 pstmt.setString(1,searchorderNo);
  
	 rs=pstmt.executeQuery();
	 
	 if (rs.next()) {
     	campingitemList = new ArrayList<BuyDataBean>();
         do{
        	 BuyDataBean campingitem= new BuyDataBean();
              
         	campingitem.setBuy_id(rs.getLong("buy_id"));        	
         	campingitem.setBuyer(rs.getString("buyer"));     
         	campingitem.setCampingitem_id(rs.getInt("campingitem_id"));
         	campingitem.setCampingitem_title(rs.getString("campingitem_title"));
         	campingitem.setBuy_price(rs.getInt("buy_price"));
         	campingitem.setBuy_count(rs.getByte("buy_count"));
         	campingitem.setCampingitem_image(rs.getString("campingitem_image"));
         	campingitem.setBuy_date(rs.getTimestamp("buy_date"));
            campingitem.setAccount(rs.getString("account"));
          	campingitem.setDeliveryName(rs.getString("deliveryName"));
          	campingitem.setDeliveryTel(rs.getString("deliveryTel"));
         	campingitem.setDeliveryAddressNum(rs.getString("deliveryAddressNum"));
            campingitem.setDeliveryAddress(rs.getString("deliveryAddress"));   
            campingitem.setSanction(rs.getString("sanction"));
            
             
              
              campingitemList.add(campingitem);
		    }while(rs.next());
		}
	 

	}catch(Exception e){ 
		e.printStackTrace();
	}finally{
		if(pstmt != null) 
			try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null) 
			try{conn.close();}catch(SQLException sqle){}
	}

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t");
 for(int i=0;i<campingitemList.size();i++) 
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<table class=\"table table-hover\"> \r\n");
      out.write("    <tr height=\"30\" class=\"table-danger\"> \r\n");
      out.write("      <td align=\"center\"  width=\"20\">No</td> \r\n");
      out.write("           <td align=\"center\"  width=\"20\">주문번호</td> \r\n");
      out.write("      <td align=\"center\"  width=\"20\">주문자</td> \r\n");
      out.write("      <td align=\"center\"  width=\"130\">제품명</td>\r\n");
      out.write("      <td align=\"center\"  width=\"50\">가격</td> \r\n");
      out.write("      <td align=\"center\"  width=\"50\">수량</td> \r\n");
      out.write("      <td align=\"center\"  width=\"80\">주문날짜</td> \r\n");
      out.write("      <td align=\"center\"  width=\"100\">주문상태</td>        \r\n");
      out.write("    </tr>\r\n");
  
    for (int i = 0 ; i <campingitemList.size() ; i++) {
    	BuyDataBean camping = 
    		  (BuyDataBean)campingitemList.get(i);

      out.write("\r\n");
      out.write("   <tr height=\"30\">\r\n");
      out.write("      <td  align=\"center\"  width=\"20\">");
      out.print(++number);
      out.write("</td> \r\n");
      out.write("      <td align=\"center\"  width=\"20\">");
      out.print(camping.getBuy_id());
      out.write("</td> \r\n");
      out.write("      <td align=\"center\"  width=\"20\">");
      out.print(camping.getBuyer());
      out.write("</td> \r\n");
      out.write("      <td width=\"130\" align=\"left\">\r\n");
      out.write("           ");
      out.print(camping.getCampingitem_title());
      out.write("</td>\r\n");
      out.write("      <td width=\"50\" align=\"center\" >");
      out.print(camping.getBuy_price());
      out.write("원</td> \r\n");
      out.write("      <td width=\"70\" align=\"center\" >\r\n");
      out.write("\t      ");
 if(camping.getBuy_count()==0) {
      out.write("\r\n");
      out.write("\t         <font color=\"red\">");
      out.print("일시품절");
      out.write("</font>\r\n");
      out.write("\t      ");
 }else{ 
      out.write("\r\n");
      out.write("\t         ");
      out.print(camping.getBuy_count());
      out.write("\r\n");
      out.write("\t      ");
} 
      out.write("\r\n");
      out.write("      </td> \r\n");
      out.write("     \r\n");
      out.write("      <td width=\"100\" align=\"center\" >");
      out.print( camping.getBuy_date().toString() );
      out.write("</td>\r\n");
      out.write("      <td width=\"100\" align=\"center\" >");
      out.print(camping.getSanction());
      out.write("</td>\r\n");
      out.write("      \r\n");
      out.write("\r\n");
      out.write("          \r\n");
      out.write("   </tr>\r\n");
}
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("<br><Br><Br><br>\r\n");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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