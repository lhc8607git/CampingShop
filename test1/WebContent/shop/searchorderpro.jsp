<%@page import="libbean.BuyDBBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="libbean.BuyDataBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import = "java.sql.Timestamp" %>
<%@ page import = "java.util.List" %>
<%@ page import = "libbean.ShopCampingitemDataBean" %>

    <% request.setCharacterEncoding("utf-8");
    
      String searchorderNo = request.getParameter("searchorderNo");
      
      List<BuyDataBean> campingitemList=null;
      int number=0;
      %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../sourceboot/css/bootstrap.min.css" rel="stylesheet">
<title>주문조회 처리</title>
</head>
<body align="center">



<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
   <a class="navbar-brand" href="shopMain.jsp">캠핑</a>
  <button class="navbar-toggler collapsed" aria-expanded="false" aria-controls="navbarColor01" aria-label="Toggle navigation" type="button" data-target="#navbarColor01" data-toggle="collapse">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="../manager/logon/managerLoginForm.jsp"> 관리자<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
       <a class="nav-link" href="#">주문조회</a>
      </li>
      <li class="nav-item">
       <a class="nav-link" href="../boardfolder/list.jsp">Q&A 문의</a>
      </li>
    </ul>    
  </div>
</nav>

	<jsp:include page="top.jsp" flush="false" /> 
	<br><br>
		<jsp:include page="topmiddle.jsp" flush="false" /> 

<br><br>

<% 
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
%>



	<% for(int i=0;i<campingitemList.size();i++) %>
	
	<table class="table table-hover"> 
    <tr height="30" class="table-danger"> 
      <td align="center"  width="20">No</td> 
      <td align="center"  width="20">주문번호</td> 
      <td align="center"  width="20">주문자</td> 
      <td align="center"  width="130">제품명</td>
      <td align="center"  width="50">가격</td> 
      <td align="center"  width="50">수량</td> 
      <td align="center"  width="80">주문날짜</td> 
      <td align="center"  width="100">주문상태</td>        
    </tr>
<%  
    for (int i = 0 ; i <campingitemList.size() ; i++) {
    	BuyDataBean camping = (BuyDataBean)campingitemList.get(i);
%>
   <tr height="30">
      <td  align="center"  width="20"><%=++number%></td> 
      <td align="center"  width="20"><%=camping.getBuy_id()%></td> 
      <td align="center"  width="20"><%=camping.getBuyer()%></td> 
      <td width="130" align="left">
           <%=camping.getCampingitem_title()%></td>
      <td width="50" align="center" ><%=camping.getBuy_price()%>원</td> 
      <td width="70" align="center" >
	      <% if(camping.getBuy_count()==0) {%>
	         <font color="red"><%="일시품절"%></font>
	      <% }else{ %>
	         <%=camping.getBuy_count()%>
	      <%} %>
      </td> 
     
      <td width="100" align="center" ><%= camping.getBuy_date().toString() %></td>
      <td width="100" align="center" ><%=camping.getSanction()%></td>          
   </tr>
<%}%>
</table>
	
	
<br><br><br><br>

	<table>
		<tr>
		    <td width="180" valign="center" halign="center">
			    <img src="logo2.PNG" border="0" width="110" height="110">
			</td>
			<td width="700" valign="top">
		        <jsp:include page="bottom.jsp" flush="false" />
		    </td>
		</tr>
	</table>
</body>
</html>
