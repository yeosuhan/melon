$(document).ready(function() {
	$('#top_like_btn1').on('click', function(e) {
		$('.top_song_like1').toggleClass('green');
	});
	const changeRanks = document.querySelectorAll(".changeRank");
	for (let i = 0; i < changeRanks.length; i++) {
		let rank = changeRanks[i].textContent.charAt(0);
		if (rank === "=") {
			changeRanks[i].textContent = "-";
		} else if (rank === "+") {
			changeRanks[i].textContent = "▲ " + changeRanks[i].textContent.slice(1);
			changeRanks[i].style.color = '#ff4040';
		} else if (rank === "-") {
			changeRanks[i].textContent = "▼ " + changeRanks[i].textContent.slice(1);
			changeRanks[i].style.color = '#405fff';
		} else if (rank === "n") {
			changeRanks[i].textContent = "NEW";
			changeRanks[i].style.color = '#04E632';
		}
	}
	// 현재 날짜와 시간을 가져오기
	let currentDate = new Date();

	// 현재 년, 월, 일, 시간, 분 추출
	let year = currentDate.getFullYear(); // 년도
	let month = (currentDate.getMonth() + 1).toString().padStart(2, '0'); // 월 (2자리수로 표시)
	let day = currentDate.getDate(); // 일
	let hours = currentDate.getHours(); // 시간

	// 날짜와 시간을 표시할 포맷으로 조합
	let formattedDateTime = `${year}.${month}.${day} ${hours}:00`;

	let now = document.querySelector(".now");
	now.textContent = formattedDateTime;
	
	$('.retate').on('click', function(e) {
		location.reload();
	});
});