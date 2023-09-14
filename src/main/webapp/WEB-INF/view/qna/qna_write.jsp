<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<link href="<%=request.getContextPath()%>/resources/css/qna_write.css" rel="stylesheet">
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">
        <div class="qna_title">
            <h3>고객지원센터</h3>
        </div>
        <table class="table_text">
            <tbody>
            <tr>
                <th>
                    <p>제목</p>
                    <textarea placeholder="제목을 작성 해주세요."></textarea>
                </th>
                <th>
                    <p>내용</p>
                    <textarea placeholder="내용을 작성 해주세요."></textarea>
                </th>
            </tr>
            </tbody>
        </table>
        <form id="qna_pull">
            <button>작성완료</button>
        </form>
    </div>
</section>
</body>
</html>