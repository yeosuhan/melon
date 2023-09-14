<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<link href="<%=request.getContextPath()%>/resources/css/album/albumAdd.css" rel="stylesheet">

<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">

        <div class="song_button">
            <div class="song_add_title"><p>앨범 추가</p></div>
            <a href="/admin"><button>뒤로가기</button></a>
            <form action="" method="post" class="data_form">
                <label>가수이름</label>
                <input type="text" size="30px" placeholder="가수이름">
                <label>앨범명</label>
                <input type="text" size="30px" placeholder="앨범명">
                <label>발매일</label>
                <input type="text" size="30px" placeholder="발매일">
                <label for="albumImage">앨범이미지 파일선택</label>
                <input type="file" id="albumImage">
                <label>앨범타입</label>
                <input type="text" size="30px" placeholder="앨범타입">
                <p>앨범소개</p>
                <textarea name="" id="" cols="50" rows="12"></textarea>
<%--                <input type="text" size="30px" placeholder="가수이름">--%>
<%--                <input type="text" size="30px" placeholder="노래제목">--%>
<%--                <input type="text" size="30px" placeholder="재생시간">--%>
<%--                <input type="text" size="30px" placeholder="노래파일">--%>
<%--                <p>노래가사</p>--%>
<%--                <textarea name="" id="" cols="50" rows="12"></textarea>--%>
                <div><input type="submit"></div>

            </form>
        </div>
    </div>
</section>
</body>
</html>