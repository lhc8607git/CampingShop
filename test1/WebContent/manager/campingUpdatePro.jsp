<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="libbean.ShopCampingitemDBBean" %>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<% request.setCharacterEncoding("utf-8");%>

<%
String realFolder = "";//웹 어플리케이션상의 절대 경로
String filename ="";
MultipartRequest imageUp = null;

String saveFolder = "/photofile";//파일이 업로드되는 폴더
String encType = "utf-8"; //엔코딩타입
int maxSize = 2*1024*1024;  //최대 업로될 파일크기 5Mb

//현재 jsp페이지의 웹 어플리케이션상의 절대 경로를 구한다
ServletContext context = getServletContext();
realFolder = context.getRealPath(saveFolder);  

try{
   
   //전송을 담당할 콤포넌트를 생성하고 파일을 전송한다.
   //전송할 파일명을 가지고 있는 객체, 서버상의 절대경로,최대 업로드될 파일크기, 문자코드, 기본 보안 적용
   imageUp = new MultipartRequest(request,realFolder,
		   maxSize,encType,new DefaultFileRenamePolicy());
   
   //전송한 파일 정보를 가져와 출력한다
   Enumeration<?> files = imageUp.getFileNames();
   
   //파일 정보가 있다면
   while(files.hasMoreElements()){
    //input 태그의 속성이 file인 태그의 name 속성값 :파라미터이름
      String name = (String)files.nextElement();
   
   //서버에 저장된 파일 이름
      filename = imageUp.getFilesystemName(name);
   }
}catch(IOException ioe){
 System.out.println(ioe);
}catch(Exception ex){
 System.out.println(ex);
}
%>

<jsp:useBean id="campingitem" scope="page" 
     class="libbean.ShopCampingitemDataBean">
</jsp:useBean>

<%
 int campingitem_id= Integer.parseInt( imageUp.getParameter("campingitem_id"));
String campingitem_kind = imageUp.getParameter("campingitem_kind");
String campingitem_makername = imageUp.getParameter("campingitem_makername");
 String campingitem_title = imageUp.getParameter("campingitem_title");
 String campingitem_price = imageUp.getParameter("campingitem_price");
 String campingitem_count = imageUp.getParameter("campingitem_count");
 String campingitem_launched = imageUp.getParameter("campingitem_launched");
 String campingitem_material = imageUp.getParameter("campingitem_material");
 String campingitem_color = imageUp.getParameter("campingitem_color");
 String campingitem_size  = imageUp.getParameter("campingitem_size");
 String campingitem_weight   = imageUp.getParameter("campingitem_weight"); 
 String campingitem_content = imageUp.getParameter("campingitem_content");
 String campingitem_discount_rate = imageUp.getParameter("campingitem_discount_rate");


 campingitem.setCampingitem_kind(campingitem_kind);
 campingitem.setCampingitem_makername(campingitem_makername);
 campingitem.setCampingitem_title(campingitem_title);
 campingitem.setCampingitem_price(Integer.parseInt(campingitem_price));
 campingitem.setCampingitem_count(Short.parseShort(campingitem_count));
 campingitem.setCampingitem_launched(campingitem_launched);
 campingitem.setCampingitem_material(campingitem_material);
 campingitem.setCampingitem_color(campingitem_color);
 campingitem.setCampingitem_size(campingitem_size);
 campingitem.setCampingitem_weight (Integer.parseInt(campingitem_weight));
 campingitem.setCampingitem_content(campingitem_content);
 campingitem.setCampingitem_discount_rate(Byte.parseByte(campingitem_discount_rate));
 campingitem.setCampingitem_image(filename);
 



ShopCampingitemDBBean campingProcess = ShopCampingitemDBBean.getInstance();
campingProcess.updateclock(campingitem, Integer.parseInt(campingitem_kind)); 

response.sendRedirect("campingList.jsp?campingitem_kind="+campingitem_kind);

%>