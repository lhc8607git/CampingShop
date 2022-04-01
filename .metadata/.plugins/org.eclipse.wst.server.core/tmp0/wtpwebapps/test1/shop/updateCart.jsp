<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "libbean.CartDBBean" %>



<%
 String cart_id = request.getParameter("cart_id");
 String buy_count = request.getParameter("buy_count");
 String campingitem_kind = request.getParameter("campingitem_kind");
 
 if(session.getAttribute("id")==null){
	response.sendRedirect("shopMain.jsp");        
 }else{
	CartDBBean campingitemProcess = CartDBBean.getInstance();
	campingitemProcess.updateCount(Integer.parseInt(cart_id), Byte.parseByte(buy_count));
    response.sendRedirect("cartList.jsp?campingitem_kind=" + campingitem_kind);
 }
%>