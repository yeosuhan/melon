IMP.init('imp85737750')

function requestPay() {



    // 티켓 정보를 추출합니다.
    var ticketName = ''; // 티켓 이름
    var ticketPrice = 0; // 티켓 가격

    // 클릭된 버튼에 따라 티켓 정보를 설정합니다.
    var clickedButton = event.target;
    if (clickedButton.name === 'pay_btn') {
        var parentBox = clickedButton.closest('.ticket_sale_payment_first_box');
        var ticketNameElement = parentBox.querySelector('.ticket_sale_payment_left_text p:nth-child(2)');
        var ticketPriceElement = parentBox.querySelector('.ticket_sale_payment_right_text p:first-child');

        if (ticketNameElement && ticketPriceElement) {
            ticketName = ticketNameElement.textContent;
            ticketPrice = parseInt(ticketPriceElement.textContent.replace(/[^0-9]/g, ''), 10);
        }
    }

    IMP.request_pay({
        pg: "kakaopay",
        pay_method: "card",
        merchant_uid: "ORD20230920"+ new Date().getTime(),   // 주문번호
        name: ticketName,
        amount: 1,                         // 숫자 타입
        buyer_email: "gildong@gmail.com",
        buyer_name: "홍길동",
        buyer_tel: "010-4242-4242",
        buyer_addr: "서울특별시 강남구 신사동",
        buyer_postcode: "01181"
    }, function (rsp) { // callback
        //rsp.imp_uid 값으로 결제 단건조회 API를 호출하여 결제결과를 판단합니다.
        if (rsp.success) {
            var msg = '';
            msg += '결제 성공: ' + rsp.paid_amount;
            alert(msg);
        } else {
            var msg = '';
            msg += '결제 실패: ' + rsp.error_msg;
            alert(msg);
        }
    });
}