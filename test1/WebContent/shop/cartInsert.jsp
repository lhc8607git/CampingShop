<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "libbean.CartDBBean" %>

<% request.setCharacterEncoding("utf-8");%>

<%
   String campingitem_kind = request.getParameter("campingitem_kind");
   String buy_count = request.getParameter("buy_count");
   String campingitem_id = request.getParameter("campingitem_id");
   String campingitem_title = request.getParameter("campingitem_title");
   String campingitem_image = request.getParameter("campingitem_image");
   String buy_price = request.getParameter("buy_price");
   String buyer = (String)session.getAttribute("id");
%>

<jsp:useBean id="cart" scope="page"
           class="libbean.CartDataBean">
</jsp:useBean>

<%
  cart.setCampingitem_id(Integer.parseInt(campingitem_id));
  cart.setCampingitem_image(campingitem_image);
  cart.setCampingitem_title(campingitem_title);
  cart.setBuy_count(Byte.parseByte(buy_count));
  cart.setBuy_price(Integer.parseInt(buy_price));
  cart.setBuyer(buyer);
  
  CartDBBean campingitemProcess = CartDBBean.getInstance();
  campingitemProcess.insertCart(cart);
  response.sendRedirect("cartList.jsp?campingitem_kind="+campingitem_kind);
%>