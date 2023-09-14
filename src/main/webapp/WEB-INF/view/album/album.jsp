<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<head>
    <link href="/resources/css/album.css" rel="stylesheet" type="text/css">
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
                            <p class="show_songs active" onclick="showSong()">수록곡</p>
                        </div>
                    </div>
                    <div class="album_left_detail">
                        <div class="album_left_detail_text">
                            <p class="show_detail_albums" onclick="showDetailAlbum()">앨범상세</p>
                        </div>
                    </div>
                    <div class="album_left_comment">
                        <div class="album_left_comment_text">
                            <p class="show_comments" onclick="showComment()">댓글</p>
                        </div>
                    </div>
                </div>
                <div class="album_menu_right">
                    <div class="album_right_select">
                        <div class="album_right_select_btn">
                            <i class="fa-solid fa-check"></i>&nbsp
                            <span class="select_btn" onclick="selectAll()">전체선택</span>
                        </div>
                    </div>
                    <div class="album_right_play">
                        <div class="album_right_select_play">
                            <i class="fa-solid fa-play"></i>&nbsp
                            <span class="play_btn">전체재생</span>
                        </div>
                    </div>
                </div>
            </div>
            <table class="song_tb">
                <thead class="head_th">
                    <tr>
                        <th><input type="checkbox" class="check_tb"></th>
                        <th><p>번호</p></th>
                        <th><p>곡정보</p></th>
                        <th><p>좋아요</p></th>
                        <th><p>재생</p></th>
                        <th><p>담기</p></th>
                        <th><p>다운</p></th>
                    </tr>
                </thead>
                <tbody class="body_tb">
                    <tr>
                        <td><input type="checkbox" class="check_tb"></td>
                        <td>1</td>
                        <td>
                            <div class="song_name_tb">노래제목</div>
                            <div class="artist_name_tb">가수명</div>
                        </td>
                        <td>
                            <strong>♥ &nbsp</strong>55,799
                        </td>
                        <td>
                            <i class="fa-solid fa-play"></i>
                        </td>
                        <td>
                            <i class="fa-solid fa-plus"></i>
                        </td>
                        <td>
                            <i class="fa-solid fa-download"></i>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" class="check_tb"></td>
                        <td>2</td>
                        <td>
                            <div class="song_name_tb">노래제목</div>
                            <div class="artist_name_tb">가수명</div>
                        </td>
                        <td>
                            <strong>♥ &nbsp</strong>122,131
                        </td>
                        <td>
                            <i class="fa-solid fa-play"></i>
                        </td>
                        <td>
                            <i class="fa-solid fa-plus"></i>
                        </td>
                        <td>
                            <i class="fa-solid fa-download"></i>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="album_detail_body" style="display: none">
                <div class="album_information_body">
                    <div class="album_detail_name_box">
                        <div class="album_name">앨범명</div>
                        <div class="album_name_value">Next Level</div>
                    </div>
                    <div class="album_detail_artist_box">
                        <div class="album_artist">아티스트</div>
                        <div class="album_artist_value">aespa</div>
                    </div>
                    <div class="album_detail_genre_box">
                        <div class="album_genre">장르</div>
                        <div class="album_genre_value">댄스</div>
                    </div>
                    <div class="album_detail_agency_box">
                        <div class="album_agency">소속사</div>
                        <div class="album_agency_value">(주)SM엔터테인먼트</div>
                    </div>
                </div>
                <div class="album_produce_text_box">
                    <span class="album_produce_text">앨범소개</span>
                </div>
                <div class="album_produce_content_box">
                    <div class="album_produce_content">앨범내용~~~~~~~~~~~~~~</div>
                </div>
            </div>
            <div class="comment_box" style="display: none">
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
<script>

    // 각 버튼의 대한 화면 나타나게 하는 기능
    function showSong() {
        // 곡 버튼 클릭 시
        $(".song_tb").show();
        $(".album_detail_body").hide();
        $(".comment_box").hide();
    }

    function showDetailAlbum() {
        // 앨범 버튼 클릭 시
        $(".song_tb").hide();
        $(".album_detail_body").show();
        $(".comment_box").hide();
    }

    function showComment() {
        // 상세정보 버튼 클릭 시
        $(".song_tb").hide();
        $(".album_detail_body").hide();
        $(".comment_box").show();
    }


    //체크박스 전체선택버튼
    function selectAll() {
        let checkboxes = document.querySelectorAll(".check_tb");
        let allChecked = true;

        for (let i = 0; i < checkboxes.length; i++) {
            if (!checkboxes[i].checked) {
                allChecked = false;
                break;
            }
        }
        // 만약 모든 체크박스가 선택된 경우에 전체 해제
        if (allChecked) {
            for (let i = 0; i < checkboxes.length; i++) {
                checkboxes[i].checked = false;
            }
        } else {
            // 그렇지 않은 경우에는 전체 선택
            for (let i = 0; i < checkboxes.length; i++) {
                checkboxes[i].checked = true;
            }
        }
    }

    // 수록곡, 앨범상세, 댓글중 하나 누르면 색깔바뀌는 기능
    $(document).ready(function() {
        $(".show_songs, .show_detail_albums, .show_comments").click(function() {
            $(".show_songs, .show_detail_albums, .show_comments").removeClass("active");
            $(this).addClass("active");
        });
    });

    // 앨범상세, 댓글을 누르면 전체선택, 전체재생버튼이 사라지게하는 기능
    $(document).ready(function(){
        $(".show_detail_albums, .show_comments").click(function() {
            $(".album_menu_right").hide();
        })
    })

    // 수록곡을 누르면 전체선택, 전체재생버튼이 나타나게하는 기능
    $(document).ready(function() {
        $(".show_songs").click(function() {
            $(".album_menu_right").show();
        })
    })

</script>
</html>
