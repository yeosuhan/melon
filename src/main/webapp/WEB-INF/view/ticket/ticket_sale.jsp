<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<link href="<%=request.getContextPath()%>/resources/css/ticket_sale.css" rel="stylesheet">
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<script src="<%=request.getContextPath()%>/resources/js/ticket_sale.js"></script>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">
		<div class="container">
            <div class="ticket_sale_top_text_box">
                <div class="ticket_sale_text_box">
                    <p>이용권</p>
                </div>
                <div class="ticket_sale_type_box">
                    <p class="active">할인 특가</p>
                    <a href="/ticket">전체 이용권</a>
                </div>
            </div>
            <div class="ticket_sale_payment_body">
                <div class="ticket_sale_payment_box">
                    <div class="ticket_sale_text_box_payment_explain">
                        <p>MP3 다운 + 무제한 듣기</p>
                    </div>
                    <div class="ticket_sale_payment_first_box">
                        <div class="ticket_sale_payment_first_left_box">
                            <div class="ticket_sale_payment_left_text">
                                <p>${ticket6.ticketName}</p>
                                <p>${ticket6.ticketComment}</p>
                            </div>
                        </div>
                        <div class="ticket_sale_payment_first_right_box">
                            <div class="ticket_sale_payment_right_text">
                                <fmt:formatNumber value="${ticket6.ticketPrice}" type="number" pattern="###,###,### 원" var="formattedPrice6" />
                                <p>${formattedPrice6}</p>
                                <p>14,000원</p>
                                <button type="button" name="pay_btn">구매</button>
                            </div>
                        </div>
                    </div>
                    <div class="ticket_sale_payment_first_box">
                        <div class="ticket_sale_payment_first_left_box">
                            <div class="ticket_sale_payment_left_text">
                                <p>${ticket7.ticketName}</p>
                                <p>${ticket7.ticketComment}</p>
                            </div>
                        </div>
                        <div class="ticket_sale_payment_first_right_box">
                            <div class="ticket_sale_payment_right_text">
                                <fmt:formatNumber value="${ticket7.ticketPrice}" type="number" pattern="###,###,### 원" var="formattedPrice7" />
                                <p>${formattedPrice7}</p>
                                <p>25,000원</p>
                                <button type="button" name="pay_btn">구매</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
		</div>
    </div>
</section>
</body>
</html>
