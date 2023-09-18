<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<link href="<%=request.getContextPath()%>/resources/css/join.css" rel="stylesheet">
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">
        <div class="login_wrap">
            <h2>Melon</h2>
            <div class="join_form">
                <form action="${c}/join" method="post">
                    <div class="idbox">
                        <input type="text" placeholder="아이디 입력" name="id" value="${id}" id="id" maxlength="20" oninput="checkIdOnInput()">
                        <button type="button" onclick="checkId()">중복체크</button>
                    </div>
                    <p id="idCheck">*필수</p>
                    <input type="password" placeholder="비밀번호 입력" name="password" id="pw" maxlength="50" oninput="checkPassword()">
                    <input type="password" placeholder="비밀번호 확인" name="passwordconfirm" id="confirmPassword" maxlength="50" oninput="checkPassword()">
                    <p id="pwCheck">*필수</p>
                    <input type="text" placeholder="이메일 입력" name="email" value="" id="email" oninput="checkEmail()">
                    <p id="emailCheck">*필수</p>
                    <input type="text" placeholder="이름 입력" name="name" value="" id="membername" maxlength="30" oninput="checkName()">
                    <p id="nameCheck">*필수</p>
                    <input type="text" placeholder="닉네임 입력" name="nick" value="" maxlength="20">
                    <input type="text" placeholder="생년월일 8자리 입력" name="birthday" value="" id="birth" pattern="\d*" maxlength="8" oninput="checkBirthday()">
                    <p id="birthCheck">*필수</p>
                    <input type="text" placeholder="핸드폰 번호 입력" name="tel" value="" id="tel" maxlength="11" pattern="\d*" oninput="checkPhone()">
                    <p id="phoneCheck">*필수</p>
                    <button type="submit" id="join_btn">회원가입</button>
                    <button formaction="/" formmethod="get"><p>취소</p></button>
                </form>
            </div>
        </div>
    </div>
</section>
<script>
console.log('${msg}');
	let msg = '${msg}';
	let resultCheck;
	let idCheckEl = $('#idCheck');
	
	if(msg === '빈 칸을 입력해주세요.'){
		alert("빈 칸을 입력해주세요.");
	}

	if(msg === '회원가입성공'){
        alert("회원가입에 성공하였습니다.");
    }

    function checkIdOnInput() {
		idCheckEl.html('중복을 확인해 주세요.');
		idCheckEl.css('color', 'red');
    }
	
	function checkId(){
		id = $('#id').val();
		
		$.ajax({
			url:"${c}/join/check",
			type:"get",
			data:{
				"id":id,
			},
			success:joinResult,
			error: function(){ alert('error')}
		});
	}

    function checkPassword() {
    	const pwValue = document.getElementById('pw').value;
    	const confirmPasswordValue = document.getElementById('confirmPassword').value;
        const pwCheckEl = document.getElementById('pwCheck');

        if (confirmPasswordValue === pwValue) {
            pwCheckEl.textContent = '비밀번호가 일치합니다.'; // 비밀번호 일치 시 메시지 초기화
            pwCheckEl.style.color = '#04E632';
        } else {
            pwCheckEl.textContent = '비밀번호를 확인해주세요.';
            pwCheckEl.style.color = 'red';
        }
        checkFormValidity();
    }
    
    function checkEmail() {
        const emailValue = document.getElementById('email').value;
        const emailCheckEl = document.getElementById('emailCheck');

        // 이메일 유효성 검사 정규식 패턴
        const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

        if (emailPattern.test(emailValue)) {
            emailCheckEl.textContent = '유효한 이메일 주소입니다.';
            emailCheckEl.style.color = '#04E632';
        } else {
            emailCheckEl.textContent = '유효하지 않은 이메일 주소입니다.';
            emailCheckEl.style.color = 'red';
        }
        checkFormValidity();
    }

function checkName() {
    const nameValue = document.getElementById('membername').value;
    const nameCheckEl = document.getElementById('nameCheck');

    // 이름 유효성 검사 정규식 패턴
    const namePattern = /^[가-힣A-Za-z]{2,50}$/;
    if(nameValue.length >= 2){
        if (namePattern.test(nameValue)) {
            nameCheckEl.textContent = '';
            nameCheckEl.style.color = '#04E632';
        } else {
            nameCheckEl.textContent = '특수문자 및 숫자는 사용할 수 없습니다.';
            nameCheckEl.style.color = 'red';
        }
    }
    checkFormValidity();
}

    function checkBirthday() {
        const birthValue = document.getElementById('birth').value;
        const birthCheckEl = document.getElementById('birthCheck');

        // 생년월일 유효성 검사 정규식 패턴 (8자리 숫자 형식)
        const birthPattern = /^[0-9]{8}$/;

        if (birthPattern.test(birthValue)) {
            birthCheckEl.textContent = '';
            birthCheckEl.style.color = '#04E632';
        } else {
            birthCheckEl.textContent = '생년월일을 입력하세요 (8자리 숫자)';
            birthCheckEl.style.color = 'red';
        }
        checkFormValidity();
    }

    function checkPhone() {
        const phoneValue = document.getElementById('tel').value;
        const phoneCheckEl = document.getElementById('phoneCheck');

        // 휴대폰 번호 유효성 검사 정규식 패턴 (11자리 숫자 형식)
        const phonePattern = /^[0-9]{10,11}$/;

        if (phonePattern.test(phoneValue)) {
            phoneCheckEl.textContent = '';
            phoneCheckEl.style.color = '#04E632';
        } else {
            phoneCheckEl.textContent = '휴대폰번호를 입력하세요 (숫자)';
            phoneCheckEl.style.color = 'red';
        }
        checkFormValidity();
    }

    function checkFormValidity() {
        // 여기에서 모든 필드의 유효성을 확인하고, 유효하지 않은 경우 회원가입 버튼을 비활성화
        const idCheckEl = document.getElementById('idCheck');
        const pwCheckEl = document.getElementById('pwCheck');
        const nameCheckEl = document.getElementById('nameCheck');
        const emailCheckEl = document.getElementById('emailCheck');
        const birthCheckEl = document.getElementById('birthCheck');
        const phoneCheckEl = document.getElementById('phoneCheck');

        const idValid = idCheckEl.style.color === 'rgb(4, 230, 50)';
        const pwValid = pwCheckEl.style.color === 'rgb(4, 230, 50)';
        const nameValid = nameCheckEl.style.color === 'rgb(4, 230, 50)';
        const emailValid = emailCheckEl.style.color === 'rgb(4, 230, 50)';
        const birthValid = birthCheckEl.style.color === 'rgb(4, 230, 50)';
        const phoneValid = phoneCheckEl.style.color === 'rgb(4, 230, 50)';

        const joinButton = document.getElementById('join_btn');

        if (idValid && pwValid && emailValid && birthValid && phoneValid && nameValid) {
            joinButton.disabled = false; // 유효한 경우 버튼 활성화
        } else {
            joinButton.disabled = true; // 하나 이상의 필드가 유효하지 않은 경우 버튼 비활성화
        }
    }
    
	function joinResult(data){
		resultCheck = data;
		if(data === 1){
			alert('중복된 아이디 입니다.');
		}else{
			alert('사용 가능한 아이디 입니다.');
		}
		successResult();
	}
	
	function successResult(){
		if(resultCheck === 0){
			idCheckEl.html('아이디를 사용할 수 있습니다.');
			idCheckEl.css('color', '#04E632');
		}
		else{
			idCheckEl.html('아이디를 사용할 수 없습니다.');
			idCheckEl.css('color', 'red');			
		}
	}
	
</script>
</body>
</html>
