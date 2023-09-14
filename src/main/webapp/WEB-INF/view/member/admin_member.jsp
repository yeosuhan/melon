<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<link href="<%=request.getContextPath()%>/resources/css/admin_member.css" rel="stylesheet">

<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">

        <div class="search_body">
            <div>회원관리페이지</div>
            <a href="/admin"><button>뒤로가기</button></a>
            <form action="" method="post">
                <input type="text" size="30px" placeholder="검색">
                <input type="submit">
            </form>
            <table>
                <tbody>

                    <tr>
                        <td><input type="checkbox"></td>
                        <td><p>이름</p></td>
                        <td><p>아이디</p></td>
                        <td><p>생년월일</p></td>
                        <td><p>연락처</p></td>
                        <td><p>이메일</p></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td><p>title</p></td>
                        <td><p>artist</p></td>
                        <td><p>album</p></td>
                        <td><p>likes</p></td>
                        <td><p>email</p></td>
                    </tr>
                </tbody>
            </table>
    </div>
</section>
</body>
</html>