<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<link href="<%=request.getContextPath()%>/resources/css/songAdd.css" rel="stylesheet">

<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">

        <div class="song_button">
            <div class="song_add_title"><p>노래 추가</p></div>
            <a href="/admin"><button>뒤로가기</button></a>
            <form action="" method="post" class="data_form">
                <label>가수이름</label>
                <input type="text" size="30px" placeholder="가수이름">
                <label>앨범명</label>
                <input type="text" size="30px" placeholder="앨범명">
                <label>노래제목</label>
                <input type="text" size="30px" placeholder="노래제목">
                <label>재생시간</label>
                <input type="text" size="30px" placeholder="재생시간">
                <label for="songFile">노래 파일선택</label>
                <input type="file" id="songFile">
                <p>노래가사</p>
                <textarea cols="50" rows="12"></textarea>
                <div><input type="submit"></div>
            </form>
        </div>
    </div>
</section>
</body>
</html>