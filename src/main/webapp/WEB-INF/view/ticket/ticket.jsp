<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<link href="<%=request.getContextPath()%>/resources/css/ticket.css" rel="stylesheet">
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<script src="<%=request.getContextPath()%>/resources/js/ticket.js"></script>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">
        <div class="container">
            <div class="ticket_top_text_box">
                <div class="ticket_text_box">
                    <p>이용권</p>
                </div>
                <div class="ticket_type_box">
                    <a href="/ticket/sale">할인 특가</a>
                    <p class="active">전체 이용권</p>
                </div>
            </div>
            <div class="ticket_payment_body">
                <div class="ticket_payment_box">
                    <div class="ticket_text_box_payment_explain">
                        <p>무제한 듣기 + 오프라인 재생</p>
                    </div>
                    <div class="ticket_payment_first_box">
                        <div class="ticket_payment_first_left_box">
                            <div class="ticket_payment_left_text">
                                <p>${ticket8.ticketName}</p>
                                <p>${ticket8.ticketComment}</p>
                            </div>
                        </div>
                        <div class="ticket_payment_first_right_box">
                            <div class="ticket_payment_right_text">
                                <fmt:formatNumber value="${ticket8.ticketPrice}" type="number" pattern="###,###,### 원" var="formattedPrice8" />
                                <p>${formattedPrice8}</p>
                                <button type="button" name="pay_btn">구매</button>
                            </div>
                        </div>
                    </div>
                    <div class="ticket_payment_first_box">
                        <div class="ticket_payment_first_left_box">
                            <div class="ticket_payment_left_text">
                                <p>${ticket9.ticketName}</p>
                                <p>${ticket9.ticketComment}</p>
                            </div>
                        </div>
                        <div class="ticket_payment_first_right_box">
                            <div class="ticket_payment_right_text">
                                <fmt:formatNumber value="${ticket9.ticketPrice}" type="number" pattern="###,###,### 원" var="formattedPrice9" />
                                <p>${formattedPrice9}</p>
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
