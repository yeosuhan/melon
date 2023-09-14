<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<link href="<%=request.getContextPath()%>/resources/css/qna.css" rel="stylesheet">
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">
        <div class="qna_title">
            <h3>고객지원센터</h3>
            <form action="/qna/writeForm" method="get">
                <button>1:1 문의하기</button>
            </form>
        </div>
        <table class="table_text">
            <tbody>
                <tr>
                    <th>
                        <p>번호</p>
                        <p>아이디</p>
                        <p>제목</p>
                        <p>답변유무</p>
                        <p>등록일</p>
                    </th>
                </tr>
                <tr>
                    <td>
                        <p>번호 내용</p>
                        <p>아이디 내용</p>
                        <p>제목 내용</p>
                        <p>답변유무 내용</p>
                        <p>등록일 내용</p>
                    </td>
                    <td>
                        <p>번호 내용</p>
                        <p>아이디 내용</p>
                        <p>제목 내용</p>
                        <p>답변유무 내용</p>
                        <p>등록일 내용</p>
                    </td>
                    <td>
                        <p>번호 내용</p>
                        <p>아이디 내용</p>
                        <p>제목 내용</p>
                        <p>답변유무 내용</p>
                        <p>등록일 내용</p>
                    </td>
                    <td>
                        <p>번호 내용</p>
                        <p>아이디 내용</p>
                        <p>제목 내용</p>
                        <p>답변유무 내용</p>
                        <p>등록일 내용</p>
                    </td>
                    <td>
                        <p>번호 내용</p>
                        <p>아이디 내용</p>
                        <p>제목 내용</p>
                        <p>답변유무 내용</p>
                        <p>등록일 내용</p>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</section>
</body>
</html>