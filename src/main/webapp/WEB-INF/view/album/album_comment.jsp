<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<head>
<link href="/resources/css/album/album_comment.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">
        <div class="container">
            <div class="album_top">
                <div class="album_top_img">
                    <div class="album_img">
                        <img src="/resources/Img/next_level.jpg"/>
                    </div>
                </div>
                <div class="album_top_text">
                    <div class="album_top_type">[싱글]</div>
                    <div class="album_top_song_name">Next Level</div>
                    <div class="album_top_artist">aespa</div>
                    <div class="album_top_release">
                        <div class="release">발매일</div>
                        <div class="date">2021.05.07</div>
                        <div class="comment">댓글 &nbsp</div>
                        <div class="comment_count">12,113개 ></div>
                    </div>
                    <div class="album_top_genre">
                        <div class="genre">장르</div>
                        <div class="genre_name">댄스</div>
                        <div class="hart"><strong>♥ &nbsp</strong></div>
                        <div class="hart_count">5,1179</div>
                    </div>
                    <div class="album_top_agency">
                        <div class="agency">소속사</div>
                        <div class="agency_name">(주)SM엔터테인먼트</div>
                    </div>
                </div>
            </div>
            <div class="album_menu">
                <div class="album_menu_left">
                    <div class="album_left_song">
                        <div class="album_left_song_text">
                            <a href=/album>수록곡</a>
                        </div>
                    </div>
                    <div class="album_left_detail">
                        <div class="album_left_detail_text">
                            <a href="/album/detail">앨범상세</a>
                        </div>
                    </div>
                    <div class="album_left_comment">
                        <div class="album_left_comment_text">
                            <a href="#">댓글</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="comment_box">
                <div class="comment_write_count_box">
                    <div class="comment_write_box">
                        <div class="comment_write_count">
                            <span class="comment_span">댓글 31개</span>
                        </div>
                        <div class="user_comment_form">
                            <form method="post" class="comment_form">
                                <div class="comment_write_img">
                                    <i class="fa-regular fa-user"></i>
                                </div>
                                <div class="comment_write_input">
                                    <input type="text" class="comment" name="comment" placeholder="댓글 작성하기"/>
                                </div>
                                <div class="comment_write_btn">
                                    <button type="button" name="reg_btn" id="reg_btn">등록</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="people_comment_box">
                    <div class="member_comment_box">
                        <div class="member_comment_count">
                            <span class="member_comment_count_text">총 15,113개</span>
                        </div>
                        <div class="member_comment">
                            <div class="member_comment_pic_box">
                                <div class="member_comment_pic">
                                    <img src="/resources/Img/member_comment_pic1.jpg"/>
                                </div>
                            </div>
                            <div class="member_comment_mem_id">멤버아이디</div>
                            <div class="member_comment_mem_content">댓글 내용 작성</div>
                            <div class="member_comment_mem_date">댓글 작성 날짜</div>
                        </div>
                        <div class="member_comment">
                            <div class="member_comment_pic_box">
                                <div class="member_comment_pic">
                                    <img src="/resources/Img/member_comment_pic2.jpg"/>
                                </div>
                            </div>
                            <div class="member_comment_mem_id">멤버아이디</div>
                            <div class="member_comment_mem_content">댓글 내용 작성</div>
                            <div class="member_comment_mem_date">댓글 작성 날짜</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
