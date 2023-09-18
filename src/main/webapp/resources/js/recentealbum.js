$(document).ready(function() {
	$('.all').on('click', function(e) {
		const all = document.querySelector(".all");
		const domestic = document.querySelector(".domestic");
		const foreign = document.querySelector(".foreign");
		all.style.color = "#04E632";
		domestic.style.color = "white";
		foreign.style.color = "white";
	});
	$('.domestic').on('click', function(e) {
		const all = document.querySelector(".all");
		const domestic = document.querySelector(".domestic");
		const foreign = document.querySelector(".foreign");
		all.style.color = "white";
		domestic.style.color = "#04E632";
		foreign.style.color = "white";
	});
	$('.foreign').on('click', function(e) {
		const all = document.querySelector(".all");
		const domestic = document.querySelector(".domestic");
		const foreign = document.querySelector(".foreign");
		all.style.color = "white";
		domestic.style.color = "white";
		foreign.style.color = "#04E632";
	});
});

/*최신앨범 국내, 해외*/
$(document).ready(function() {
	// 전체를 클릭했을 때의 이벤트 핸들러
	$(".all").click(function() {
		// 국내를 클릭한 경우에 수행할 Ajax 호출을 여기에 작성
		var origin = $(this).text();
		$.ajax({
			url: "/album/recente/" + origin, // 국내 데이터를 불러올 서버 엔드포인트 지정
			method: "GET", // HTTP 메서드 (GET, POST 등)
			data: { origin: origin },
			dataType: "json",
			success: function(data) {
				// Ajax 호출 성공 시 실행할 코드
				showAlbums(data);
				console.log("전체 데이터:", data);
				// 여기에서 데이터를 화면에 표시하거나 다른 작업을 수행할 수 있습니다.
			},
			error: function(error) {
				// Ajax 호출 실패 시 실행할 코드
				console.error("Ajax 호출 실패:", error);
			}
		});
	});
	// 국내를 클릭했을 때의 이벤트 핸들러
	$(".domestic").click(function() {
		// 국내를 클릭한 경우에 수행할 Ajax 호출을 여기에 작성
		var origin = $(this).text();
		$.ajax({
			url: "/album/recente/" + origin, // 국내 데이터를 불러올 서버 엔드포인트 지정
			method: "GET", // HTTP 메서드 (GET, POST 등)
			data: { origin: origin },
			dataType: "json",
			success: function(data) {
				// Ajax 호출 성공 시 실행할 코드
				showAlbums(data);
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
			url: "/album/recente/" + origin, // 해외 데이터를 불러올 서버 엔드포인트 지정
			method: "GET", // HTTP 메서드 (GET, POST 등)
			data: { origin: origin },
			dataType: "json",
			success: function(data) {
				// Ajax 호출 성공 시 실행할 코드
				showAlbums(data);
				console.log("해외 데이터:", data);
				// 여기에서 데이터를 화면에 표시하거나 다른 작업을 수행할 수 있습니다.
			},
			error: function() {
				// Ajax 호출 실패 시 실행할 코드

				console.error("Ajax 호출 실패:", error);
			}
		});
	});
	function showAlbums(data) {
		// 데이터를 받아와서 화면에 동적으로 업데이트
		var ul = $("<ul></ul>");
		$.each(data, function(index, ad) {
			var li = $("<li></li>");
			var a = $("<a href='#'><img src='/resources/Img/song/"+ad.songName+".jpg' style='width: 200px;'></a>");
			var div = $("<div></div>");

			var p1 = $("<p class='album'></p>").text(ad.albumName);
			var p2 = $("<p class='artist'></p>").text(ad.artistName);
			var p3 = $("<p class='release'></p>").text(ad.releaseDate);

			div.append(p1, p2, p3);
			li.append(a, div);
			ul.append(li);
		});

		// 기존의 ul 엘리먼트를 대체
		$("#albumList").empty();
		$("#albumList").append(ul)
	}
});