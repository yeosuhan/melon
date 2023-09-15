IMP.init('imp85737750')

// 로그인 상태를 확인하는 JavaScript 함수
function isLoggedIn() {
    // userCookie가 있는지 확인 (로그인 여부 확인을 위한 쿠키)
    var userCookie = getCookie("userCookie");
    return userCookie !== null && userCookie === "loggedIn"; // userCookie의 값이 "loggedIn"이면 로그인 상태로 간주
}

// 쿠키를 가져오는 함수
function getCookie(name) {
    var value = "; " + document.cookie;
    var parts = value.split("; " + name + "=");
    if (parts.length === 2) return parts.pop().split(";").shift();
}

function requestPay() {
    if (isLoggedIn()) {
        // 티켓 정보를 추출합니다.
        var ticketName = ''; // 티켓 이름
        var ticketPrice = 0; // 티켓 가격

        // 클릭된 버튼에 따라 티켓 정보를 설정합니다.
        var clickedButton = event.target;
        if (clickedButton.name === 'pay_btn') {
            var parentBox = clickedButton.closest('.ticket_payment_first_box');
            var ticketNameElement = parentBox.querySelector('.ticket_payment_left_text p:first-child');
            var ticketPriceElement = parentBox.querySelector('.ticket_payment_right_text p');

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
                msg += '결제 성공' ;
                alert(msg);
            } else {
                var msg = '';
                msg += '결제 실패: ' + rsp.error_msg;
                alert(msg);
            }
        });
    } else {
        // 로그인되지 않은 경우, 로그인페이지로 이동
        alert("로그인이 필요합니다.")
        window.location.href = '/login?';
    }

}

// 결제 버튼 클릭시 requestPay 함수 호출
var payButton = document.querySelector('[name="pay_btn"]');
if (payButton) {
    payButton.addEventListener('click', function () {
        requestPay();
    });
}