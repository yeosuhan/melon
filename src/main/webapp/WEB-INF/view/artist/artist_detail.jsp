<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<head>
    <link href="/resources/css/artist/artist_detail.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">
        <div class="container">
            <div class="artist_top">
                <div class="artist_top_img">
                    <div class="artist_img">
                        <img src="/resources/Img/karina.png"/>
                    </div>
                </div>
                <div class="artist_top_text">
                    <div class="artist_top_text_box">
                        <div class="artist_top_name">카리나</div>
                        <div class="artist_top_hart_play">
                            <div class="hart"><strong>♥ &nbsp;</strong></div>
                            <div class="hart_count">51,179</div>
                            <div class="play_btn"><i class="fa-solid fa-play"></i></div>
                            <div class="rep_song">카리나 대표곡 또는 최근곡</div>
                        </div>
                        <div class="artist_top_agency">
                            <div class="agency">소속사</div>
                            <div class="agency_name">(주)SM엔터테인먼트</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="artist_menu">
                <div class="artist_menu_left">
                    <div class="artist_left_song">
                        <div class="artist_left_song_text">
                            <a href=/artist>곡</a>
                        </div>
                    </div>
                    <div class="artist_left_detail">
                        <div class="artist_left_detail_text">
                            <a href="/artist/album">앨범</a>
                        </div>
                    </div>
                    <div class="artist_left_comment">
                        <div class="artist_left_comment_text">
                            <a href="#">상세정보</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="artist_info_body">
                <div class="artist_info_text_box">
                    <div class="artist_info_text">
                        <div class="artist_activity_info"><p>활동정보</p></div>
                        <div class="artist_debut">
                            <p>데뷔</p>
                            <p>2023.09.01</p>
                        </div>
                        <div class="artist_recent_song">
                            <div class="artist_recent_song_text">
                                <p>최근곡</p>
                            </div>
                            <div class="artist_album">
                                <p><i class="fa-solid fa-play"></i></p>
                                <img src="/resources/Img/Love_Lee.jpg"/>
                            </div>
                            <div class="artist_song_name">
                                <p>Love Lee</p>
                                <p>악동뮤지션</p>
                            </div>
                        </div>
                        <div class="artist_type">
                            <p>유형</p>
                            <p>여성/그룹</p>
                        </div>
                        <div class="artist_group">
                            <p>소속그룹</p>
                            <p>aespa</p>
                        </div>
                    </div>
                </div>
                <div class="artist_pro_box">
                    <div class="artist_pro_text_box">
                        <p>아티스트 소개</p>
                    </div>
                    <div class="artist_pro_content_box">
                        <div class="artist_pro_content">
                            <p>아티스트 내용 ~~~~~~~~~~~~~~~~~~~~~~~~~~~</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
