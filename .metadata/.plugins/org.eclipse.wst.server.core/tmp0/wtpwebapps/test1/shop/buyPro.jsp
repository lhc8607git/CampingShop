<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "libbean.CartDataBean" %>
<%@ page import = "libbean.CartDBBean" %>
<%@ page import = "libbean.BuyDBBean" %>
<%@ page import = "libbean.ShopCampingitemDBBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("utf-8");%>

<!-- 내 디비에 넣는 부분 (시작)-->
<%
  String account = request.getParameter("account");
   String deliveryName = request.getParameter("deliveryName");
   String deliveryTel = request.getParameter("deliveryTel");
   String deliveryAddessNum = request.getParameter("deliveryAddessNum");
   String deliveryAddess = request.getParameter("deliveryAddess");
   String buyer = (String)session.getAttribute("id");
   
   CartDBBean cartProcess = CartDBBean.getInstance();
   List<CartDataBean> cartLists = cartProcess.getCart(buyer);
   
   BuyDBBean buyProcess = BuyDBBean.getInstance();
   
   buyProcess.insertBuy(cartLists,buyer,account, 
		   deliveryName, deliveryTel, deliveryAddessNum,deliveryAddess);
   
   //response.sendRedirect("buyList.jsp");
   %>
 <!-- 내 디비에 넣는 부분 (끝) -->  
 
 
 
 
   
<!-- --------------------------------------결제 카카오 부분(시작)------------------------- -->    
    <%
    String name = (String)request.getAttribute("deliveryName");
    String email = (String)request.getAttribute("email");
    String phone = (String)request.getAttribute("deliveryTel");
    String addressNum = (String)request.getAttribute("deliveryAddessNum");
    String address = (String)request.getAttribute("deliveryAddess");
    String totalPrice ="10";    
%>
<!-- --------------------------------------결제 카카오 부분(끝)------------------------- -->
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<title>Insert title here</title>
</head>
<body>

<!-- --------------------------------------결제 카카오 부분(시작)------------------------- -->
    <script>
    $(function(){
        var IMP = window.IMP; // 생략가능
        IMP.init('imp20897629'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg;
        
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : '(주)캠핑 쇼핑몰 - 결제 테스트',
            amount : <%=totalPrice%>,
            buyer_email : '<%=email%>',
            buyer_name : '<%=name%>',
            buyer_tel : '<%=phone%>',
            buyer_addr : '<%=address%>',
            buyer_postcode : '<%=addressNum%>',
            //m_redirect_url : 'http://www.naver.com'    카카오페이로 할경우에는 필요 없음
        }, function(rsp) {
            if ( rsp.success ) {
                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
                jQuery.ajax({
                    url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        imp_uid : rsp.imp_uid
                        //기타 필요한 데이터가 있으면 추가 전달
                    }
                }).done(function(data) {
                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                    if ( everythings_fine ) {
                        msg = '결제가 완료되었습니다.';
                        msg += '\n고유ID : ' + rsp.imp_uid;
                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                        msg += '\결제 금액 : ' + rsp.paid_amount;
                        msg += '카드 승인번호 : ' + rsp.apply_num;
                        
                        alert(msg);
                    } else {
                        //[3] 아직 제대로 결제가 되지 않았습니다.
                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                    }
                });
                //성공시 이동할 페이지
                alert(msg);
                location.href="javascript:window.location='buysuccess.jsp'";
            } else {
                msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
                //실패시 이동할 페이지
                location.href="javascript:window.location='cartList.jsp?campingitem_kind=all'";
                alert(msg);
            }
        });
        
    });
    </script>
<!-- --------------------------------------결제 카카오 부분(끝)------------------------- -->


</body>
</html>




