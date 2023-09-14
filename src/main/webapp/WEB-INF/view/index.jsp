<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<link href="<%=request.getContextPath()%>/resources/css/index.css" rel="stylesheet">
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">
        <div class="with_playlist">
        <c:if test="${empty user}">
        	<h3>함께 들어요 → </h3>
        </c:if>
        <c:if test="${!empty user}">
        	<c:if test="${!empty user.nick }">
        		<h3>${user.nick}님 함께 들어요 → </h3>
        	</c:if>
        	<c:if test="${empty user.nick }">
        		<h3>${user.name}님 함께 들어요 → </h3>
        	</c:if>
        </c:if>
            <table>
                <tbody>
                    <tr>
                        <td><img src="<%=request.getContextPath()%>/resources/Img/album.png"></td>
                        <td><p>K-DANCE PARTY: 내적댄스 케이팝</p></td>
                    </tr>
                    <tr>
                        <td><img src="<%=request.getContextPath()%>/resources/Img/album.png"></td>
                        <td><p>K-DANCE PARTY: 내적댄스 케이팝</p></td>
                    </tr>
                    <tr>
                        <td><img src="<%=request.getContextPath()%>/resources/Img/album.png"></td>
                        <td><p>K-DANCE PARTY: 내적댄스 케이팝</p></td>
                    </tr>
                    <tr>
                        <td><img src="<%=request.getContextPath()%>/resources/Img/album.png"></td>
                        <td><p>K-DANCE PARTY: 내적댄스 케이팝</p></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="main_topsong">
            <h3>TOP100 →</h3>
            <div class="main_topsong_wrap">
                <table id="top_chart1">
                    <tbody>
                    <tr>
                        <td class="topsong_fst">
                            <img src="<%=request.getContextPath()%>/resources/Img/album.png">
                        </td>
                        <td class="topsong_sec">
                            <p>1</p>
                            <p>-</p>
                        </td>
                        <td class="topsong_thd">
                            <div>
                                <p>Seven(feat.Latto)-Clean Ver.</p>
                                <p>정국</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="topsong_fst">
                            <img src="<%=request.getContextPath()%>/resources/Img/album.png">
                        </td>
                        <td class="topsong_sec">
                            <p>1</p>
                            <p>-</p>
                        </td>
                        <td class="topsong_thd">
                            <div>
                                <p>Seven(feat.Latto)-Clean Ver.</p>
                                <p>정국</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="topsong_fst">
                            <img src="<%=request.getContextPath()%>/resources/Img/album.png">
                        </td>
                        <td class="topsong_sec">
                            <p>1</p>
                            <p>-</p>
                        </td>
                        <td class="topsong_thd">
                            <div>
                                <p>Seven(feat.Latto)-Clean Ver.</p>
                                <p>정국</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="topsong_fst">
                            <img src="<%=request.getContextPath()%>/resources/Img/album.png">
                        </td>
                        <td class="topsong_sec">
                            <p>1</p>
                            <p>-</p>
                        </td>
                        <td class="topsong_thd">
                            <div>
                                <p>Seven(feat.Latto)-Clean Ver.</p>
                                <p>정국</p>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <table id="top_chart2">
                    <tbody>
                    <tr>
                        <td class="topsong_fst">
                            <img src="<%=request.getContextPath()%>/resources/Img/album.png">
                        </td>
                        <td class="topsong_sec">
                            <p>1</p>
                            <p>-</p>
                        </td>
                        <td class="topsong_thd">
                            <div>
                                <p>Seven(feat.Latto)-Clean Ver.</p>
                                <p>정국</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="topsong_fst">
                            <img src="<%=request.getContextPath()%>/resources/Img/album.png">
                        </td>
                        <td class="topsong_sec">
                            <p>1</p>
                            <p>-</p>
                        </td>
                        <td class="topsong_thd">
                            <div>
                                <p>Seven(feat.Latto)-Clean Ver.</p>
                                <p>정국</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="topsong_fst">
                            <img src="<%=request.getContextPath()%>/resources/Img/album.png">
                        </td>
                        <td class="topsong_sec">
                            <p>1</p>
                            <p>-</p>
                        </td>
                        <td class="topsong_thd">
                            <div>
                                <p>Seven(feat.Latto)-Clean Ver.</p>
                                <p>정국</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="topsong_fst">
                            <img src="<%=request.getContextPath()%>/resources/Img/album.png">
                        </td>
                        <td class="topsong_sec">
                            <p>1</p>
                            <p>-</p>
                        </td>
                        <td class="topsong_thd">
                            <div>
                                <p>Seven(feat.Latto)-Clean Ver.</p>
                                <p>정국</p>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="sug_newsong">
            <h3>추천 음악 →</h3>
            <table>
                <tbody>
                    <tr>
                        <td>
                            <img src="<%=request.getContextPath()%>/resources/Img/album.png">
                            <div>
                                <p>항해</p>
                                <p>김세정</p>
                            </div>
                        </td>
                        <td>
                            <img src="<%=request.getContextPath()%>/resources/Img/album.png">
                            <div>
                                <p>항해</p>
                                <p>김세정</p>
                            </div>
                        </td>
                        <td>
                            <img src="<%=request.getContextPath()%>/resources/Img/album.png">
                            <div>
                                <p>항해</p>
                                <p>김세정</p>
                            </div>
                        </td>
                        <td>
                            <img src="<%=request.getContextPath()%>/resources/Img/album.png">
                            <div>
                                <p>항해</p>
                                <p>김세정</p>
                            </div>
                        </td>
                        <td>
                            <img src="<%=request.getContextPath()%>/resources/Img/album.png">
                            <div>
                                <p>항해</p>
                                <p>김세정</p>
                            </div>
                        </td>
                        <td>
                            <img src="<%=request.getContextPath()%>/resources/Img/album.png">
                            <div>
                                <p>항해</p>
                                <p>김세정</p>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="my_music">
            <h3>마이 뮤직 →</h3>
            <table>
                <tbody>
                <tr>
                    <td><img src="<%=request.getContextPath()%>/resources/Img/album.png"></td>
                    <td><p>K-DANCE PARTY: 내적댄스 케이팝</p></td>
                </tr>
                <tr>
                    <td><img src="<%=request.getContextPath()%>/resources/Img/album.png"></td>
                    <td><p>K-DANCE PARTY: 내적댄스 케이팝</p></td>
                </tr>
                <tr>
                    <td><img src="<%=request.getContextPath()%>/resources/Img/album.png"></td>
                    <td><p>K-DANCE PARTY: 내적댄스 케이팝</p></td>
                </tr>
                <tr>
                    <td><img src="<%=request.getContextPath()%>/resources/Img/album.png"></td>
                    <td><p>K-DANCE PARTY: 내적댄스 케이팝</p></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</section>
</body>
</html>
