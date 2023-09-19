$(document).ready(function() {
	$('.domestic').on('click', function(e) {
		const domestic = document.querySelector(".domestic");
		const foreign = document.querySelector(".foreign");
		domestic.style.color = "#04E632";
		foreign.style.color = "white";
	});
	$('.foreign').on('click', function(e) {
		const domestic = document.querySelector(".domestic");
		const foreign = document.querySelector(".foreign");
		domestic.style.color = "white";
		foreign.style.color = "#04E632";
	});
	$(document).on('click', '[id^="top_song_like"]', function() {
		// 클릭 이벤트 처리 로직을 여기에 작성
		// 이벤트가 발생한 요소에 대한 작업을 수행할 수 있습니다.

		// 예: 클래스 이름에서 숫자 부분을 추출하여 어떤 항목이 클릭되었는지 식별
		var idName = $(this).attr('id');
		var number = idName.replace('top_song_like', ''); // 클래스 이름에서 숫자 추출

		$('#top_song_like' + number).toggleClass('green');
	});
	// 요소에 마우스 오버 이벤트를 추가
	$('[id^="top_like_btn"]').hover(function() {
		// 마우스 오버 시 동작
		$(this).find('.none').css('display', 'none');
		$(this).find('.ilike').css('display', 'inline-block');
	}, function() {
		// 마우스 아웃 시 동작
		$(this).find('.none').css('display', 'inline-block');
		$(this).find('.ilike').css('display', 'none');
	});
});

/*최신곡 국내, 해외*/
$(document).ready(function() {
	// 국내를 클릭했을 때의 이벤트 핸들러
	$(".domestic").click(function() {
		// 국내를 클릭한 경우에 수행할 Ajax 호출을 여기에 작성
		var origin = $(this).text();
		$.ajax({
			url: "/song/recente/" + origin, // 국내 데이터를 불러올 서버 엔드포인트 지정
			method: "GET", // HTTP 메서드 (GET, POST 등)
			data: { origin: origin },
			dataType: "json",
			success: function(data) {
				// Ajax 호출 성공 시 실행할 코드
				showSongs(data);
				console.log("국내 데이터:", data);
				// 여기에서 데이터를 화면에 표시하거나 다른 작업을 수행할 수 있습니다.
			},
			error: function() {
				// Ajax 호출 실패 시 실행할 코드
				console.error("Ajax 호출 실패:", error);
			}
		});
	});

	// 해외를 클릭했을 때의 이벤트 핸들러
	$(".foreign").click(function() {
		// 해외를 클릭한 경우에 수행할 Ajax 호출을 여기에 작성
		var origin = $(this).text();
		console.log(origin);
		$.ajax({
			url: "/song/recente/" + origin, // 해외 데이터를 불러올 서버 엔드포인트 지정
			method: "GET", // HTTP 메서드 (GET, POST 등)
			data: { origin: origin },
			dataType: "json",
			success: function(data) {
				// Ajax 호출 성공 시 실행할 코드
				showSongs(data);
				console.log("해외 데이터:", data);
				// 여기에서 데이터를 화면에 표시하거나 다른 작업을 수행할 수 있습니다.
			},
			error: function() {
				// Ajax 호출 실패 시 실행할 코드

				console.error("Ajax 호출 실패:", error);
			}
		});
	});
	function showSongs(data) {
		// 데이터를 받아와서 화면에 동적으로 업데이트

		var tbody = $("#songList");
		tbody.empty();
		$.each(data, function(index, ad) {
			var tr = $("<tr></tr>");
			var td1 = $("<td><input type='checkbox'></td>");
			var td2 = $("<td><img src='/resources/Img/song/"+(ad.songName)+".jpg' style='height: 55px;'></td>");
			var td3 = $("<td class='play_song'></td>").text(ad.songName);
			var td4 = $("<td></td>").text(ad.artistName);
			var td5 = $("<td></td>").text(ad.albumName);
			var td6 = $("<td></td>");

			var p = $("<p id='top_like_btn" + (index + 1) + "'></p>");
			var a = $("<a id='top_song_like" + (index + 1) + "'></a>");
			var strong1 = $("<strong class='none'>♡</strong>");
			var strong2 = $("<strong class='ilike'>♥</strong>");

			a.append(strong1, strong2);
			p.append(a);
			td6.append(p, ad.songLike);

			tr.append(td1, td2, td3, td4, td5, td6);
			tbody.append(tr);
		});
	}
});