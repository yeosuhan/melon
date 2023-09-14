<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<link href="<%=request.getContextPath()%>/resources/css/login.css" rel="stylesheet">
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">
        <div class="login_wrap">
            <h2>Melon</h2>
                <div class="kakao_btn">
                    <form action="" method="">
                        <button type="submit">
                            <img src="<%=request.getContextPath()%>/resources/Img/login_kakao.png">
                            <p>&nbsp;카카오계정 로그인</p>
                        </button>
                    </form>
                </div>
                <div class="melon_btn">
                    <form action="/login/melon" method="">
                        <button type="submit">
                            <img src="<%=request.getContextPath()%>/resources/Img/login_melon.png">
                            <p>&nbsp;&nbsp;멜론아이디 로그인</p>
                        </button>
                    </form>
                </div>
            <div class="join">
                <a href="/join">회원가입</a>
            </div>
        </div>
    </div>
</section>
</body>
</html>