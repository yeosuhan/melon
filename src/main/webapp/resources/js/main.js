$(document).ready(function() {
	/*추가할 노래 가져오기*/
	const add_songs = document.querySelectorAll('.play_song');
	/*재생목록 추가*/
	add_songs.forEach((add_song, index) => {
		add_song.addEventListener('click', () => {
			const add_song = document.querySelectorAll('.play_song')[index].textContent;
			$.ajax({
				url: "/playlist/add", // 국내 데이터를 불러올 서버 엔드포인트 지정
				method: "POST", // HTTP 메서드 (GET, POST 등)
				data: { add_song: add_song },
				dataType: "json",
				success: function(data) {
					// Ajax 호출 성공 시 실행할 코드
					showPlayLists(data);
					// 여기에서 데이터를 화면에 표시하거나 다른 작업을 수행할 수 있습니다.
				},
				error: function(error) {
					// Ajax 호출 실패 시 실행할 코드
					console.error("Ajax 호출 실패:", error);
				}
			});
		});
	});
	/*재생목록 출력*/
	function showPlayLists(data) {
		// 데이터를 받아와서 화면에 동적으로 업데이트
		$(".playsong_list").empty();
		const ul = $("<ul></ul>");
		const play_now_song_name = document.querySelector('.play_now_song_name')
		const play_now_artist_name = document.querySelector('.play_now_artist_name')
		const play_now_song_time = document.querySelector('.play_now_song_time')
		$.each(data, function(index, ad) {
			const li = $("<li class='playsong_list_wrap'></li>");
			const input_box = $("<input type='checkbox'>");
			const img = $("<img src='/resources/Img/album2.png'>");
			const div = $("<div class='playsong_list_wrap_div'></div>");

			const p1 = $("<p class='album'></p>").text(ad.songName);
			const p2 = $("<p class='artist'></p>").text(ad.artistName);

			div.append(p1, p2);
			li.append(input_box, img, div);
			ul.append(li);
			play_now_song_name.textContent = ad.songName;
			play_now_artist_name.textContent = ad.artistName;
			play_now_song_time.textContent = "00:00 | "+ad.playTime;
		});
		$(".playsong_list").append(ul);
		// 기존의 ul 엘리먼트를 대체
	}
});