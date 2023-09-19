<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<link href="<%=request.getContextPath()%>/resources/css/adminAlbum.css" rel="stylesheet">
<script src="<%=request.getContextPath()%>/resources/js/admin.js"></script>

<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">
        <section>
            <div class="admin_title">
                <h1 class="title1">관리자 페이지</h1>
                <div>
                    <a href="/admin/member"><button>회원페이지</button></a>
                    <a href="/admin"><button>노래페이지</button></a>
                </div>
            </div>
            <div class="second_title">
                <div>
                    <button>앨범PAGE</button>
                    <a href="/admin/artist"><button>가수</button></a>
                    <a href="/album/add"><button>앨범추가</button></a>

                    <form action="" method="post">
                        <input type="text" size="30px" placeholder="검색">
                        <button class="asd">제출</button>
                    </form>
                    <div class="right_button">
                        <button onclick="selectAll()">전체선택</button>
                        <button>삭제</button>
                    </div>
                </div>
            </div>
        </section>
        <section class="second_section">
            <table>
                <tr class="first_tr">
                    <th>선택</th>
                    <th>발매일</th>
                    <th>앨범이름</th>
                    <th>가수이름</th>
                    <th>앨범소개</th>
                </tr>
                <tbody>
                    <c:forEach var="item" items="${allalbum}">
                        <tr class="second_tr">
                            <td><input type="checkbox" class="check_btn"></td>
                            <td>${item.releaseDate}</td>
                            <td>${item.albumName}</td>
                            <td>${item.artistName}</td>
                            <td>${item.albumPro}</td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
        </section>
    </div>
</section>
</body>
</html>