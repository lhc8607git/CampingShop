<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "libbean.ShopCampingitemDataBean" %>
<%@ page import = "libbean.ShopCampingitemDBBean" %>
<%@ page import = "java.text.NumberFormat" %>


<html>
<head>
<title></title>
</head>
<body>
<h3>    Update 물품</h3>
<%
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
%>
  <br><font size="+1"><b>--
  <a href="list.jsp?campingitem_kind=<%=campingitemLists[0].getCampingitem_kind()%>"><%=campingitem_kindName%></a>
  --</b></font>
<%             
  for(int j=0;j<campingitemLists.length;j++){
%>
    <table> 
      <tr height="30"> 
        <td rowspan="4"  width="100">
        <a href="campingContent.jsp?campingitem_id=<%=campingitemLists[j].getCampingitem_id()%>&campingitem_kind=<%=campingitemLists[0].getCampingitem_kind()%>">
             <img src="../photofile/<%=campingitemLists[j].getCampingitem_image()%>"  
             border="0" width="60" height="90"></a></td> 
       <td width="350"><font size="+1"><b>
          <a href="campingContent.jsp?campingitem_id=<%=campingitemLists[j].getCampingitem_id()%>&campingitem_kind=<%=campingitemLists[0].getCampingitem_kind()%>">
              <%=campingitemLists[j].getCampingitem_title() %></a></b></font></td> 
       <td rowspan="4" width="100">
          <%if(campingitemLists[j].getCampingitem_count()==0){ %>
              <b>일시품절</b>
          <%}else{ %>
               &nbsp;
          <%} %>
       </td>
     </tr>        
     <tr height="30"> 
       <td width="350">제조사 : <%=campingitemLists[j].getCampingitem_makername()%></td> 
     </tr>
     <tr height="30"> 
       <td width="350">수량 : <%=campingitemLists[j].getCampingitem_count()%></td>
     </tr>
     <tr height="30"> 
       <td width="350">정가 :<%=NumberFormat.getInstance().format(campingitemLists[j].getCampingitem_price())%>원<br>
                판매가 : <b><font color="red">
       <%=NumberFormat.getInstance().format((int)(campingitemLists[j].getCampingitem_price()*((double)(100-campingitemLists[j].getCampingitem_discount_rate())/100)))%>
            </font></b>원</td> 
     </tr> 
     </table>
     <br>
<%
  }
}
%>

</body>
</html>