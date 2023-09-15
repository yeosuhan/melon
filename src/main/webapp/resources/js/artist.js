// 곡 버튼 클릭 시 곡만 나오게 하는 기능
function showTable() {
    $(".artist_album").hide();
    $(".artist_info_body").hide();
    $(".song_tb").show();
    $(".artist_sort_and_play").show();
}

// 앨범 버튼 클릭 시 앨범만 나오게 하는 기능
function showAlbum() {
    $(".song_tb").hide();
    $(".artist_info_body").hide();
    $(".artist_album").show();
    $(".artist_sort_and_play").hide();
}

// 상세정보 버튼 클릭 시 상제정보만 나오게 하는 기능
function showInfo() {
    $(".song_tb").hide();
    $(".artist_album").hide();
    $(".artist_sort_and_play").hide();
    $(".artist_info_body").show();
}

// 곡 버튼 클릭 시
$(".show_table").click(function() {
    $(".show_table").addClass("active");
    $(".show_album, .show_info").removeClass("active");
    showTable();
});

// 앨범 버튼 클릭 시
$(".show_album").click(function() {
    $(".show_album").addClass("active");
    $(".show_table, .show_info").removeClass("active");
    showAlbum();
});

// 상세정보 버튼 클릭 시
$(".show_info").click(function() {
    $(".show_info").addClass("active");
    $(".show_table, .show_album").removeClass("active");
    showInfo();
});


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
$(".artist_song_latest_text").click(function () {
    let artistId = document.querySelector('#artistId').value;
    console.log("song 최신순 artistId : " + artistId);
    let sortType = "최신순";
    console.log("sortType : " + sortType);
    sendAjaxRequest(artistId, sortType);
});

$(".artist_song_popularity_text").click(function () {
    let artistId = document.querySelector('#artistId').value;
    console.log("song 인기순 artistId : " + artistId);
    let sortType = "인기순";
    console.log("sortType : " + sortType);
    sendAjaxRequest(artistId, sortType);
});

$(".artist_song_alphabetically_text").click(function () {
    let artistId = document.querySelector('#artistId').value;
    console.log("song 가나다순 artistId : " + artistId);
    let sortType = "가나다순";
    console.log("sortType : " + sortType);
    sendAjaxRequest(artistId, sortType);
});

// 최신순 클릭 시 색깔 변경
$(".artist_song_latest_text").click(function (){
    $(".artist_song_latest_text").addClass("sort");
    $(".artist_song_popularity_text, .artist_song_alphabetically_text").removeClass("sort");
})
// 인기순 클릭 시 색깔 변경
$(".artist_song_popularity_text").click(function (){
    $(".artist_song_popularity_text").addClass("sort");
    $(".artist_song_latest_text , .artist_song_alphabetically_text").removeClass("sort");
})
// 가나다순 클릭 시 색깔 변경
$(".artist_song_alphabetically_text").click(function (){
    $(".artist_song_alphabetically_text").addClass("sort");
    $(".artist_song_popularity_text, .artist_song_latest_text").removeClass("sort");
})

function sendAjaxRequest(artistId, sortType) {
    $.ajax({
        method: 'GET',
        url: `/artist/detail/song/${artistId}?sortType=${sortType}`,
        success: function (data) {
            populateTable(data);
            console.log('성공');
        },
        error: function (error) {
            console.error('Ajax 요청 실패:', error);
        }
    });
}

function populateTable(data) {
    // artistSongsTable 테이블 내용을 초기화
    $("#artistSongsTable").empty();

    // 데이터를 반복하여 테이블에 추가
    for (let i = 0; i < data.length; i++) {
        let song = data[i];
        console.log(song);
        let row = $("<tr>");

        // 체크박스 컬럼
        let checkboxCell = $("<td>").html('<input type="checkbox" class="check_tb">');
        row.append(checkboxCell);

        // 곡명 컬럼
        let songNameCell = $("<td>").html('<div class="artist_song_name_box_tb"><div class="artist_album_pic"><img src="/resources/Img/Better_Things.jpg"/></div><div class="artist_song_name_tb">' + data[i].songName + '</div></div>');
        row.append(songNameCell);

        // 아티스트명 컬럼
        let artistNameCell = $("<td>").html('<div class="artist_name_tb">' + data[i].artistName + '</div><input type="hidden" name="artistId" value="' + data[i].artistId + '" id="artistId"/>');
        row.append(artistNameCell);

        // 앨범명 컬럼
        let albumNameCell = $("<td>").html('<a href="/album/' + data[i].albumId + '" class="artist_album_name_tb">' + data[i].albumName + '</a>');
        row.append(albumNameCell);

        // 발매일 컬럼
        let releaseDateCell = $("<td>").html('<p>' + data[i].releaseDate + '</p>');
        row.append(releaseDateCell);

        // 좋아요 컬럼
        let albumLikeCell = $("<td>").html('<p><strong>♡ &nbsp</strong>' + data[i].songLike + '</p>');
        row.append(albumLikeCell);

        // 재생 컬럼
        let playCell = $("<td>").html('<p><i class="fa-solid fa-play"></i></p>');
        row.append(playCell);

        // 행을 테이블에 추가
        $("#artistSongsTable").append(row);
    }
}

$(document).ready(function() {
    let isLiked = false;
    let isArtistEmpty = $('#hartCntAdd').data('isArtistEmpty');

    if (isArtistEmpty === 'true') {
        $('#hartCntAdd').click(function() {
            let artistId = $('#artistInfoArtistId').val();
            let button = $(this);

            if (!isLiked) {
                $.ajax({
                    type: 'POST',
                    url: `/artist/${artistId}/like/update`,
                    success: function(data) {
                        // 성공한 경우 좋아요 수를 업데이트
                        updateLikeCount(data);
                        button.html('<strong>♥ &nbsp;</strong>');
                        isLiked = true;
                    },
                    error: function() {
                        console.error('에러');
                    }
                });
            } else {
                $.ajax({
                    type: 'POST',
                    url: `/artist/${artistId}/like/delete`,
                    success: function(data) {
                        // 성공한 경우 좋아요 수를 업데이트
                        updateLikeCount(data);
                        button.html('<strong>♡ &nbsp;</strong>');
                        isLiked = false;
                    },
                    error: function() {
                        console.error('에러');
                    }
                });
            }
        });
    } else {
        $('#hartCntDel').click(function() {
            let artistId = $('#artistInfoArtistId').val();
            let button = $(this);

            if (!isLiked) {
                $.ajax({
                    type: 'POST',
                    url: `/artist/${artistId}/like/update`,
                    success: function(data) {
                        // 성공한 경우 좋아요 수를 업데이트
                        updateLikeCount(data);
                        button.html('<strong>♥ &nbsp;</strong>');
                        isLiked = true;
                    },
                    error: function() {
                        console.error('에러');
                    }
                });
            } else {
                $.ajax({
                    type: 'POST',
                    url: `/artist/${artistId}/like/delete`,
                    success: function(data) {
                        // 성공한 경우 좋아요 수를 업데이트
                        updateLikeCount(data);
                        button.html('<strong>♡ &nbsp;</strong>');
                        isLiked = false;
                    },
                    error: function() {
                        console.error('에러');
                    }
                });
            }
        });
    }

    function updateLikeCount(data) {
        $('.hart_count').text(data);
    }
});








