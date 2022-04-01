<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "libbean.ShopCampingitemDBBean" %>

<% request.setCharacterEncoding("utf-8");%>

<%
  int campingitem_id = Integer.parseInt(request.getParameter("campingitem_id"));
  String campingitem_kind = request.getParameter("campingitem_kind");
 
  ShopCampingitemDBBean campingProcess = ShopCampingitemDBBean.getInstance();
  campingProcess.deletecamping(campingitem_id);

  response.sendRedirect("campingList.jsp?campingitem_kind="+campingitem_kind);
%>