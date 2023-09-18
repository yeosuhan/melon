<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<link href="<%=request.getContextPath()%>/resources/css/artist/artistAdd.css" rel="stylesheet">

<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">

        <div class="song_button">
            <div class="song_add_title"><p>가수 추가</p></div>
            <a href="/admin/artist"><button>뒤로가기</button></a>
            <form action="/artist/add" method="post" class="data_form">
                <label>가수이름</label>
                <input type="text" size="30px" placeholder="가수이름" name="artistName">
                <label>데뷔</label>
                <input type="text" size="30px" placeholder="데뷔" name="debut">
                <label>소속사</label>
                <input type="text" size="30px" placeholder="소속사" name="agency">
                <label>활동유형</label>
                <input type="text" size="30px" placeholder="활동유형" name="activityType">
                <p>가수소개</p>
                <textarea cols="50" rows="12" name="artistPro"></textarea>
                <div><input type="submit"></div>

            </form>
        </div>
    </div>
</section>
</body>
</html>