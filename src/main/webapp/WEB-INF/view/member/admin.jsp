<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<link href="<%=request.getContextPath()%>/resources/css/admin.css" rel="stylesheet">
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
                    <a href="/artist/add"><button>가수추가</button></a>
                    <a href="/album/add"><button>앨범추가</button></a>
                    <a href="/song/add"><button>노래추가</button></a>

                    <form action="" method="post">
                        <input type="text" size="30px" placeholder="검색">
                        <button class="asd">제출</button>
                    </form>
                    <div class="right_button">
                        <button>전체선택</button>
                        <button>삭제</button>
                    </div>
                </div>
            </div>
        </section>
        <section class="second_section">
            <table>
                <tr class="first_tr">
                    <th>선택</th>
                    <th>노래제목</th>
                    <th>장르</th>
                    <th>아티스트명</th>
                    <th>앨범명</th>
                </tr>
                <tr class="second_tr">
                    <td><input type="checkbox"></td>
                    <td>이브,프시케 그리고 푸른수염의 아내</td>
                    <td>Dance</td>
                    <td>LE SSERAFIM(르세라핌)</td>
                    <td>UNFORGIVEN</td>
                </tr>
                <tr class="second_tr">
                    <td><input type="checkbox"></td>
                    <td>이브,프시케 그리고 푸른수염의 아내</td>
                    <td>Dance</td>
                    <td>LE SSERAFIM(르세라핌)</td>
                    <td>UNFORGIVEN</td>
                </tr>
                <tr class="second_tr">
                    <td><input type="checkbox"></td>
                    <td>이브,프시케 그리고 푸른수염의 아내</td>
                    <td>Dance</td>
                    <td>LE SSERAFIM(르세라핌)</td>
                    <td>UNFORGIVEN</td>
                </tr>
                <tr class="second_tr">
                    <td><input type="checkbox"></td>
                    <td>이브,프시케 그리고 푸른수염의 아내</td>
                    <td>Dance</td>
                    <td>LE SSERAFIM(르세라핌)</td>
                    <td>UNFORGIVEN</td>
                </tr>
            </table>
        </section>
    </div>
</section>
</body>
</html>