$(document).ready(function() {
	$('.all').on('click', function(e) {
		const all = document.querySelector(".all");
		const domestic = document.querySelector(".domestic");
		const foreign = document.querySelector(".foreign");
		all.style.color="#04E632";
		domestic.style.color="white";
		foreign.style.color="white";
	});
	$('.domestic').on('click', function(e) {
		const all = document.querySelector(".all");
		const domestic = document.querySelector(".domestic");
		const foreign = document.querySelector(".foreign");
		all.style.color="white";
		domestic.style.color="#04E632";
		foreign.style.color="white";
	});
	$('.foreign').on('click', function(e) {
		const all = document.querySelector(".all");
		const domestic = document.querySelector(".domestic");
		const foreign = document.querySelector(".foreign");
		all.style.color="white";
		domestic.style.color="white";
		foreign.style.color="#04E632";
	});

});