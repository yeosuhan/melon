<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<link href="<%=request.getContextPath()%>/resources/css/album/albumAdd.css" rel="stylesheet">
<script>
    var formCounter = 0; // 입력 페이지 카운터 초기화

    function addInputFields() {
        var form = document.querySelector('.data_form'); // 폼 요소 가져오기

        // 새로운 입력 페이지를 생성
        var newDiv = document.createElement('div');
        newDiv.classList.add('input-page');

        // 입력 필드 생성 및 추가
        var fields = ['가수이름', '노래제목', '재생시간', '노래파일'];
        for (var i = 0; i < fields.length; i++) {
            var newInput = document.createElement('input');
            newInput.type = 'text';
            newInput.size = '30';
            newInput.placeholder = fields[i];
            newDiv.appendChild(newInput);
        }

        // "노래가사" 레이블 생성 및 추가
        var lyricsLabel = document.createElement('p');
        lyricsLabel.textContent = '노래가사';
        newDiv.appendChild(lyricsLabel);

        // 마지막 가사 입력 필드로 textarea 생성 및 추가
        var newTextarea = document.createElement('textarea');
        newTextarea.name = '가사';
        newTextarea.cols = '50';
        newTextarea.rows = '12';
        newDiv.appendChild(newTextarea);

        // "취소하기" 버튼 생성 및 이벤트 핸들러 연결
        var cancelButton = document.createElement('button');
        cancelButton.type = 'button';
        cancelButton.textContent = '취소하기';
        cancelButton.onclick = function() {
            form.removeChild(newDiv); // 입력 페이지 삭제
            formCounter--; // 입력 페이지 카운터 감소
            // "추가하기" 버튼 다시 추가
            if (formCounter === 0) {
                form.appendChild(addButton);
            }
        };

        newDiv.appendChild(cancelButton); // "취소하기" 버튼을 입력 페이지에 추가
        form.appendChild(newDiv);
        formCounter++; // 입력 페이지 카운터 증가

        // "추가하기" 버튼을 숨김
        form.removeChild(addButton);
    }

    window.onload = function() {
        var addButton = document.createElement('button');
        addButton.type = 'button';
        addButton.textContent = '추가하기';
        addButton.classList.add('add-button'); // 버튼에 클래스 추가
        addButton.onclick = addInputFields;

        var form = document.querySelector('.data_form');
        form.appendChild(addButton); // 초기에 버튼만 표시
    }
</script>
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">

        <div class="song_button">
            <div class="song_add_title"><p>앨범 추가</p></div>
            <a href="/admin"><button>나가기</button></a>
            <form class="button_form"><button formaction="/admin" formmethod="get">저장</button></form>
            <form action="" method="post" class="data_form">
                <input type="text" size="30" placeholder="앨범명">
                <input type="text" size="30" placeholder="발매일">
                <input type="text" size="30" placeholder="앨범이미지">
                <input type="text" size="30" placeholder="앨범타입">
                <p>앨범소개</p>
                <textarea name="" id="" cols="50" rows="12"></textarea>
<%--                <button type="button" onclick="addInputFields()">추가하기</button> <!-- 버튼 추가 -->--%>
            </form>
        </div>
    </div>
</section>
</body>
</html>