<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<aside class="nav">
    <img src="<%=request.getContextPath()%>/resources/Img/melon_icon.png">
    <ul>
        <li><a href="/">멜론홈</a></li>
        <li><a href="/song/popular">인기차트</a></li>
        <li>
            <a href="/song/recente">최신음악</a>
            <ul>
                <li><a href="/song/recente">최신곡</a></li>
                <li><a href="/album/recente">최신앨범</a></li>
            </ul>
        </li>
        <li><a href="/genre">장르음악</a></li>
        <li><a href="/qna">Q&A</a></li>
        <c:if test="${!empty user}">
            <c:if test="${user.role == 0}">
                <li>
                    <a href="/playlist/recente">마이뮤직</a>
                    <ul>
                        <li><a href="/playlist/recente">재생목록</a></li>
                        <li><a href="/like/artist">팬맺음</a></li>
                    </ul>
                </li>
                <li><a href="">구매목록</a></li>
            </c:if>
            <c:if test="${user.role == 1}">
                <li><a href="/admin">관리자 페이지</a></li>
            </c:if>
        </c:if>
        <c:if test="${empty user}">
            <li>
                <a href="/playlist/recente" id="music">마이뮤직</a>
                <ul>
                    <li><a href="/playlist/now/{id}" id="recente">재생목록</a></li>
                    <li><a href="/like/artist" id="artist">팬맺음</a></li>
                </ul>
            </li>
            <li><a href="" id="buy">구매목록</a></li>
        </c:if>
    </ul>
</aside>
<script>
    const moveLinks = ["music", "recente", "artist", "buy"];
    moveLinks.forEach(function(moveLink) {
        const linkElement = document.getElementById(moveLink);
        if (linkElement) {
            linkElement.addEventListener("click", function(event) {
                event.preventDefault();
                alert("로그인 후 이용 가능합니다.");
            });
        }
    });
</script>