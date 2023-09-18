// 클릭하여 드롭다운 메뉴 토글하기
document.addEventListener('DOMContentLoaded', function() {
	const dropdown_title = document.getElementById('dropdown-title');
	const button1 = document.querySelector('.dropbtn');
	const fup = document.getElementById('favoriteup');
	const fdown = document.getElementById('favoritedown');
	const ul = document.querySelector('.favorite-menu ul');
	const fm = document.querySelector('.favorite-menu');
	/*즐겨찾기 체크*/
	const checks = document.querySelectorAll('.check');
	const pluss = document.querySelectorAll('.plus');
	/*장르 시대별 체크*/
	const all = document.querySelector('.all');
	const _20 = document.querySelector('._20');
	const _10 = document.querySelector('._10');
	const _00 = document.querySelector('._00');
	const _90 = document.querySelector('._90');
	const _80 = document.querySelector('._80');
	const showlines = document.querySelectorAll('.showline li')
	/*탭별(최신앨범, 최신곡)*/
	const recentAlbum = document.querySelector('.recentAlbum');
	const recentSong = document.querySelector('.recentSong');
	const main = document.querySelector('.main');
	/*즐찾 체크*/
	pluss.forEach((plus, index) => {
		plus.addEventListener('click', () => {
			const plus = document.querySelectorAll('.plus')[index];
			const check = document.querySelectorAll('.check')[index];
			const myfavorite = document.querySelectorAll('.favorite-menu li')[index];
			for (const i = 0; i < showline.length; i++) {
				console.log("왼쪽 : " + showlines[i].textContent);
				console.log("오른쪽 : " + myfavorite.textContent);
				if ((showlines[i].textContent) == (myfavorite.textContent)) {
					showlines[i].style.display = 'inline-block';
					break;
				}
			}
			check.style.display = 'inline-block';
			plus.style.display = 'none';

			$.ajax({
				url: "/genre/add", // 국내 데이터를 불러올 서버 엔드포인트 지정
				method: "POST", // HTTP 메서드 (GET, POST 등)
				data: { genreCategory: index },
				dataType: "json",
				success: function() {
					// Ajax 호출 성공 시 실행할 코드
					// 여기에서 데이터를 화면에 표시하거나 다른 작업을 수행할 수 있습니다.
				},
				error: function(error) {
					// Ajax 호출 실패 시 실행할 코드
					console.error("Ajax 호출 실패:", error);
				}
			});
		});
	});
	checks.forEach((check, index) => {
		check.addEventListener('click', () => {
			const plus = document.querySelectorAll('.plus')[index];
			const check = document.querySelectorAll('.check')[index];
			const myfavorite = document.querySelectorAll('.favorite-menu li')[index];
			for (const i = 0; i < showlines.length; i++) {
				console.log("왼쪽 : " + showlines[i].textContent);
				console.log("오른쪽 : " + myfavorite.textContent);
				if ((showlines[i].textContent) == (myfavorite.textContent)) {
					showlines[i].style.display = 'none';
					break;
				}
			}
			check.style.display = 'none';
			plus.style.display = 'inline-block';

			$.ajax({
				url: "/genre/delete", // 국내 데이터를 불러올 서버 엔드포인트 지정
				method: "POST", // HTTP 메서드 (GET, POST 등)
				data: { genreCategory: index },
				dataType: "json",
				success: function() {
					// Ajax 호출 성공 시 실행할 코드
					// 여기에서 데이터를 화면에 표시하거나 다른 작업을 수행할 수 있습니다.
				},
				error: function(error) {
					// Ajax 호출 실패 시 실행할 코드
					console.error("Ajax 호출 실패:", error);
				}
			});
		});
	});
	fdown.addEventListener('click', function() {
		fup.style.display = 'block';
		fdown.style.display = 'none';
		ul.classList.add('showline');
		ul.classList.remove('none');
		fm.style.display = 'block';
	});
	fup.addEventListener('click', function() {
		fup.style.display = 'none';
		fdown.style.display = 'block';
		ul.classList.add('none');
		ul.classList.remove('showline');
		fm.style.display = 'none';
	});
	button1.addEventListener('click', function() {
		// 버튼을 클릭하면 드롭다운 메뉴를 토글합니다.
		dropdown_title.classList.toggle('show');
	});

	// 다른 곳을 클릭하면 드롭다운을 닫습니다.
	window.addEventListener('click', function(event) {
		if (!event.target.matches('.dropbtn') && !event.target.matches('.btn')) {
			if (dropdown_title.classList.contains('show')) {
				dropdown_title.classList.remove('show');
			}
		}
	});
	/*장르 시대별 체크*/
	all.addEventListener('click', function() {
		all.style.setProperty('color', '#04E632', 'important');
		_20.style.setProperty('color', '#999898', 'important');
		_10.style.setProperty('color', '#999898', 'important');
		_00.style.setProperty('color', '#999898', 'important');
		_90.style.setProperty('color', '#999898', 'important');
		_80.style.setProperty('color', '#999898', 'important');
	});
	_20.addEventListener('click', function() {
		all.style.setProperty('color', '#999898', 'important');
		_20.style.setProperty('color', '#04E632', 'important');
		_10.style.setProperty('color', '#999898', 'important');
		_00.style.setProperty('color', '#999898', 'important');
		_90.style.setProperty('color', '#999898', 'important');
		_80.style.setProperty('color', '#999898', 'important');
	});
	_10.addEventListener('click', function() {
		all.style.setProperty('color', '#999898', 'important');
		_20.style.setProperty('color', '#999898', 'important');
		_10.style.setProperty('color', '#04E632', 'important');
		_00.style.setProperty('color', '#999898', 'important');
		_90.style.setProperty('color', '#999898', 'important');
		_80.style.setProperty('color', '#999898', 'important');
	});
	_00.addEventListener('click', function() {
		all.style.setProperty('color', '#999898', 'important');
		_20.style.setProperty('color', '#999898', 'important');
		_10.style.setProperty('color', '#999898', 'important');
		_00.style.setProperty('color', '#04E632', 'important');
		_90.style.setProperty('color', '#999898', 'important');
		_80.style.setProperty('color', '#999898', 'important');
	});
	_90.addEventListener('click', function() {
		all.style.setProperty('color', '#999898', 'important');
		_20.style.setProperty('color', '#999898', 'important');
		_10.style.setProperty('color', '#999898', 'important');
		_00.style.setProperty('color', '#999898', 'important');
		_90.style.setProperty('color', '#04E632', 'important');
		_80.style.setProperty('color', '#999898', 'important');
	});
	_80.addEventListener('click', function() {
		all.style.setProperty('color', '#999898', 'important');
		_20.style.setProperty('color', '#999898', 'important');
		_10.style.setProperty('color', '#999898', 'important');
		_00.style.setProperty('color', '#999898', 'important');
		_90.style.setProperty('color', '#999898', 'important');
		_80.style.setProperty('color', '#04E632', 'important');
	});
	/*드롭다운*/
	const mains = document.querySelectorAll('#myDropdown a');
	const main_title = document.querySelector('.dropdown .main');
	const era_head = document.querySelector('.era-head');
	const genre_tab = document.querySelector('.genre_tab');
	const menu_toggle = document.querySelector('.menu-toggle');
	/*장르별*/
	mains.forEach((main, index) => {
		main.addEventListener('click', () => {
			const main = document.querySelectorAll('#myDropdown a')[index];
			const genre_recent_tab = document.querySelector('.recentAlbum');

			all.style.setProperty('color', '#04E632', 'important');
			genre_recent_tab.style.color = '#04E632';
			recentAlbum.style.color = '#04E632';
			recentSong.style.color = '#e3e3e3';
			all.style.setProperty('color', '#04E632', 'important');
			_20.style.setProperty('color', '#999898', 'important');
			_10.style.setProperty('color', '#999898', 'important');
			_00.style.setProperty('color', '#999898', 'important');
			_90.style.setProperty('color', '#999898', 'important');
			_80.style.setProperty('color', '#999898', 'important');

			main_title.textContent = main.textContent;
			if (main.textContent == "장르 홈") {
				era_head.style.display = 'none';
				genre_tab.style.display = 'none';
				menu_toggle.style.display = 'block flex';
			} else {
				era_head.style.display = 'inline-block';
				genre_tab.style.display = 'inline-block';
				menu_toggle.style.display = 'none';
			}
			const choiceGenre = main.textContent;
			$.ajax({
				url: "/genre/album/" + choiceGenre,
				method: "GET", // HTTP 메서드 (GET, POST 등)
				dataType: "json",
				success: function(data) {
					// Ajax 호출 성공 시 실행할 코드
					showAlbums(data)
					// 여기에서 데이터를 화면에 표시하거나 다른 작업을 수행할 수 있습니다.
				},
				error: function(error) {
					// Ajax 호출 실패 시 실행할 코드
					console.error("Ajax 호출 실패:", error);
				}
			});
		});
	});
	/*나의 즐겨찾기*/
	showlines.forEach((showline, index) => {
		showline.addEventListener('click', () => {
			const main = document.querySelectorAll('.showline li')[index];
			const genre_recent_tab = document.querySelector('.recentAlbum');

			all.style.setProperty('color', '#04E632', 'important');
			genre_recent_tab.style.color = '#04E632';
			recentAlbum.style.color = '#04E632';
			recentSong.style.color = '#e3e3e3';
			all.style.setProperty('color', '#04E632', 'important');
			_20.style.setProperty('color', '#999898', 'important');
			_10.style.setProperty('color', '#999898', 'important');
			_00.style.setProperty('color', '#999898', 'important');
			_90.style.setProperty('color', '#999898', 'important');
			_80.style.setProperty('color', '#999898', 'important');

			main_title.textContent = main.textContent;
			if (main.textContent == "장르 홈") {
				era_head.style.display = 'none';
				genre_tab.style.display = 'none';
				menu_toggle.style.display = 'block flex';
			} else {
				era_head.style.display = 'inline-block';
				genre_tab.style.display = 'inline-block';
				menu_toggle.style.display = 'none';
			}
			const choiceGenre = main.textContent;
			$.ajax({
				url: "/genre/album/" + choiceGenre,
				method: "GET", // HTTP 메서드 (GET, POST 등)
				dataType: "json",
				success: function(data) {
					// Ajax 호출 성공 시 실행할 코드
					showAlbums(data)
					// 여기에서 데이터를 화면에 표시하거나 다른 작업을 수행할 수 있습니다.
				},
				error: function(error) {
					// Ajax 호출 실패 시 실행할 코드
					console.error("Ajax 호출 실패:", error);
				}
			});
		});
	});
	/* 연도별*/
	const eras = document.querySelectorAll('.era-head .era-body p');
	eras.forEach((era, index) => {
		era.addEventListener('click', () => {
			const era = document.querySelectorAll('.era-head .era-body p')[index];
			const genre = document.querySelector('.main').textContent;
			const choiceEra = era.textContent;
			var recentAlbum = document.querySelector('.recentAlbum');
			var recentSong = document.querySelector('.recentSong');
			var colorRecentSong = window.getComputedStyle(recentSong).getPropertyValue('color');
			var colorRecentAlbum = window.getComputedStyle(recentAlbum).getPropertyValue('color');
			if (colorRecentSong == 'rgb(4, 230, 50)') {
				$.ajax({
					url: "/genre/song/year/" + choiceEra, // 국내 데이터를 불러올 서버 엔드포인트 지정
					method: "GET", // HTTP 메서드 (GET, POST 등)
					data: { genreName: genre },
					dataType: "json",
					success: function(data) {
						// Ajax 호출 성공 시 실행할 코드
						showSongs(data)
						// 여기에서 데이터를 화면에 표시하거나 다른 작업을 수행할 수 있습니다.
					},
					error: function(error) {
						// Ajax 호출 실패 시 실행할 코드
						console.error("Ajax 호출 실패:", error);
					}
				});
			} else if (colorRecentAlbum == 'rgb(4, 230, 50)') {
				$.ajax({
					url: "/genre/album/year/" + choiceEra, // 국내 데이터를 불러올 서버 엔드포인트 지정
					method: "GET", // HTTP 메서드 (GET, POST 등)
					data: { genreName: genre },
					dataType: "json",
					success: function(data) {
						// Ajax 호출 성공 시 실행할 코드
						showAlbums(data)
						// 여기에서 데이터를 화면에 표시하거나 다른 작업을 수행할 수 있습니다.
					},
					error: function(error) {
						// Ajax 호출 실패 시 실행할 코드
						console.error("Ajax 호출 실패:", error);
					}
				});
			}
		});
	});
	/*탭별(최신앨범, 최신곡)*/
	recentAlbum.addEventListener('click', function() {
		recentAlbum.style.color = '#04E632';
		recentSong.style.color = '#e3e3e3';
		all.style.setProperty('color', '#04E632', 'important');
		_20.style.setProperty('color', '#999898', 'important');
		_10.style.setProperty('color', '#999898', 'important');
		_00.style.setProperty('color', '#999898', 'important');
		_90.style.setProperty('color', '#999898', 'important');
		_80.style.setProperty('color', '#999898', 'important');

		const choiceGenre = main.textContent;

		$.ajax({
			url: "/genre/album/" + choiceGenre, // 국내 데이터를 불러올 서버 엔드포인트 지정
			method: "GET", // HTTP 메서드 (GET, POST 등)
			dataType: "json",
			success: function(data) {
				// Ajax 호출 성공 시 실행할 코드
				showAlbums(data)
				// 여기에서 데이터를 화면에 표시하거나 다른 작업을 수행할 수 있습니다.
			},
			error: function(error) {
				// Ajax 호출 실패 시 실행할 코드
				console.error("Ajax 호출 실패:", error);
			}
		});
	});
	recentSong.addEventListener('click', function() {
		recentAlbum.style.color = '#e3e3e3';
		recentSong.style.color = '#04E632';
		all.style.setProperty('color', '#04E632', 'important');
		_20.style.setProperty('color', '#999898', 'important');
		_10.style.setProperty('color', '#999898', 'important');
		_00.style.setProperty('color', '#999898', 'important');
		_90.style.setProperty('color', '#999898', 'important');
		_80.style.setProperty('color', '#999898', 'important');

		const choiceGenre = main.textContent;

		$.ajax({
			url: "/genre/song/" + choiceGenre, // 국내 데이터를 불러올 서버 엔드포인트 지정
			method: "GET", // HTTP 메서드 (GET, POST 등)
			dataType: "json",
			success: function(data) {
				// Ajax 호출 성공 시 실행할 코드
				showSongs(data)
				// 여기에서 데이터를 화면에 표시하거나 다른 작업을 수행할 수 있습니다.
			},
			error: function(error) {
				// Ajax 호출 실패 시 실행할 코드
				console.error("Ajax 호출 실패:", error);
			}
		});
	});
	/*앨범 데이터 출력*/
	function showAlbums(data) {
		// 데이터를 받아와서 화면에 동적으로 업데이트
		$("#List").empty();
		const ul = $("<ul></ul>");
		$.each(data, function(index, ad) {
			const li = $("<li></li>");
			const a = $("<a href='#'><img src='/resources/Img/song/"+(ad.songName)+".jpg'></a>");
			const div = $("<div></div>");

			const p1 = $("<p class='album'></p>").text(ad.albumName);
			const p2 = $("<p class='artist'></p>").text(ad.artistName);
			const p3 = $("<p class='release'></p>").text(ad.releaseDate);

			div.append(p1, p2, p3);
			li.append(a, div);
			ul.append(li);
		});
		// 기존의 ul 엘리먼트를 대체
		$("#List").append(ul)
	}
	/*노래 데이터 출력*/
	function showSongs(data) {
		// 데이터를 받아와서 화면에 동적으로 업데이트
		const genre_List = $(".genre_list");
		genre_List.empty();

		const table = $("<table></table>");
		const thead = $("<thead></thead>");
		const tbody = $("<tbody></tbody>");
		const tr1 = $("<tr></tr>");
		const td1_1 = $("<td><input type='checkbox'></td>");
		const td1_2 = $("<td></td>");
		const td1_3 = $("<td></td>").text("곡명");
		const td1_4 = $("<td></td>").text("아티스트명");
		const td1_5 = $("<td></td>").text("앨범명");
		const td1_6 = $("<td></td>").text("좋아요");

		$.each(data, function(index, ad) {
			const tr2 = $("<tr></tr>");
			const td2_1 = $("<td><input type='checkbox'></td>");
			const td2_2 = $("<td><img src='/resources/Img/song/"+(ad.songName)+".jpg' style='height: 55px;'></td>");
			const td2_3 = $("<td class='play_song'></td>").text(ad.songName);
			const td2_4 = $("<td></td>").text(ad.artistName);
			const td2_5 = $("<td></td>").text(ad.albumName);
			const td2_6 = $("<td></td>");

			const p = $("<p id='top_like_btn" + (index + 1) + "'></p>");
			const a = $("<a id='top_song_like" + (index + 1) + "'></a>");
			const strong1 = $("<strong class='none'>♡</strong>");
			const strong2 = $("<strong class='ilike'>♥</strong>");

			a.append(strong1, strong2);
			p.append(a);
			td2_6.append(p, ad.songLike);

			tr2.append(td2_1, td2_2, td2_3, td2_4, td2_5, td2_6);
			tbody.append(tr2);
		});
		tr1.append(td1_1, td1_2, td1_3, td1_4, td1_5, td1_6);
		thead.append(tr1);
		table.append(thead, tbody);
		genre_List.append(table);
	}
});