$(document).ready(function() {
	$('.domestic').on('click', function(e) {
		const domestic = document.querySelector(".domestic");
		const foreign = document.querySelector(".foreign");
		domestic.style.color="#04E632";
		foreign.style.color="white";
	});
	$('.foreign').on('click', function(e) {
		const domestic = document.querySelector(".domestic");
		const foreign = document.querySelector(".foreign");
		domestic.style.color="white";
		foreign.style.color="#04E632";
	});
});