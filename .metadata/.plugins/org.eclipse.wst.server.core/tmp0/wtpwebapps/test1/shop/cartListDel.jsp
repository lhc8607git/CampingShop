<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "libbean.CartDBBean" %>


<%
 String list = request.getParameter("list");
 String buyer = (String)session.getAttribute("id");
 String campingitem_kind = request.getParameter("campingitem_kind");
   
 if(session.getAttribute("id")==null){
	response.sendRedirect("shopMain.jsp");        
 }else{
	CartDBBean campingitemProcess = CartDBBean.getInstance();
	   
	if(list.equals("all"))
		campingitemProcess.deleteAll(buyer);
	else
		campingitemProcess.deleteList(Integer.parseInt(list));
	
	response.sendRedirect("cartList.jsp?campingitem_kind=" + campingitem_kind);
 }
%>