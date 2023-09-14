<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<link href="<%=request.getContextPath()%>/resources/css/search.css" rel="stylesheet">
<script src="<%=request.getContextPath()%>/resources/js/search.js"></script>
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">
    <!-- type=button : URI를 연결하지 않고 단순하게 사용자 인터페이스만를 ‘조작‘하기 위한 버튼 -->
    <!-- onsubmit="return false" 위와 같음 -->
        <div class="search_header">
            <ul>
                <li><h2>검색</h2></li>
                <li><button><p>통합검색</p></button></li>
                <li><button><p>곡</p></button></li>
                <li><button><p>앨범</p></button></li>
                <li><button><p>아티스트</p></button></li>
            </ul>
        </div>
        <div class="search_body">
<%--            <h3><a href="">전체 재생</a> | <a href="">선택 재생</a></h3>--%>
            <c:if test="${!empty songs.size()}">
                <h3>곡 (${songs.size()}) → </h3>
            </c:if>
            <table>
                <tbody>
                    <c:forEach var="song" items="${songs}">
                        <tr>
                            <td><input type="checkbox"></td>
                            <td><img src="<%=request.getContextPath()%>/resources/Img/album.png"></td>
                            <td><p>${song.songName}</p></td>
                            <td><p>${song.artistName}</p></td>
                            <td><p>${song.albumName}</p></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="search_album">
            <c:if test="${!empty songs.size()}">
                <h3>앨범 (${songs.size()}) → </h3>
            </c:if>
            <table>
                <tbody>
                    <c:forEach var="song" items="${songs}">
                    <tr>
                        <td><img src="<%=request.getContextPath()%>/resources/Img/album.png"></td>
                        <td><p>${song.albumName}</p></td>
                        <td><p>${song.artistName}</p></td>
                        <td><p>${song.songName}</p></td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="search_artist">
            <c:if test="${!empty songs.size()}">
                <h3>가수 (${songs.size()}) → </h3>
            </c:if>
            <table>
                <tbody>
                <c:forEach var="song" items="${songs}">
                    <tr>
                        <td><img src="<%=request.getContextPath()%>/resources/Img/album.png"></td>
                        <td><p>${song.artistName}</p></td>
                        <td><p>${song.genre}</p></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</section>
</body>
</html>