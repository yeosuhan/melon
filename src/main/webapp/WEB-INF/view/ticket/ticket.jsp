<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                                <p>스트리밍 플러스 정기결제</p>
                                <p>무제한 듣기 + 오프라인 재생</p>
                            </div>
                        </div>
                        <div class="ticket_payment_first_right_box">
                            <div class="ticket_payment_right_text">
                                <p>10,900원</p>
                                <button type="button" name="pay_btn">구매</button>
                            </div>
                        </div>
                    </div>
                    <div class="ticket_payment_first_box">
                        <div class="ticket_payment_first_left_box">
                            <div class="ticket_payment_left_text">
                                <p>스트리밍 플러스 30일</p>
                                <p>무제한 듣기 + 오프라인 재생</p>
                            </div>
                        </div>
                        <div class="ticket_payment_first_right_box">
                            <div class="ticket_payment_right_text">
                                <p>11,400원</p>
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
