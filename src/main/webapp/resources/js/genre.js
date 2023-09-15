// 클릭하여 드롭다운 메뉴 토글하기
document.addEventListener('DOMContentLoaded', function() {
    var dropdown_title = document.getElementById('dropdown-title');    
    var button1 = document.querySelector('.dropbtn');
    var fup = document.getElementById('favoriteup');
    var fdown = document.getElementById('favoritedown');
    var ul = document.querySelector('.favorite-menu ul');
    var fm = document.querySelector('.favorite-menu');
    /*즐겨찾기 체크*/
    var checks = document.querySelectorAll('.check');
    var pluss = document.querySelectorAll('.plus');
    /*장르 시대별 체크*/
    var all = document.querySelector('.all');
    var _20 = document.querySelector('._20');
    var _10 = document.querySelector('._10');
    var _00 = document.querySelector('._00');
    var _90 = document.querySelector('._90');
    var _80 = document.querySelector('._80');
    /*내가 즐겨찾기한거*/
    var myfavorites = document.querySelectorAll('.showline li');
    /*즐찾 체크*/
    pluss.forEach((plus,index)=> {
		plus.addEventListener('click',()=> {
			const check = document.querySelectorAll('.check')[index];
			const myfavorite = document.querySelectorAll('.showline li')[index];
			myfavorite.style.display='inline-block';
			check.style.display='inline-block';
			plus.style.display='none';
		});
	});
	checks.forEach((check,index)=> {
		check.addEventListener('click',()=> {
			const plus = document.querySelectorAll('.plus')[index];
			const myfavorite = document.querySelectorAll('.showline li')[index];
			myfavorite.style.display='none';
			plus.style.display='inline-block';
			check.style.display='none';
		});
	});
    fdown.addEventListener('click', function() {
		fup.style.display='block';
		fdown.style.display='none';
		ul.classList.add('showline');
		ul.classList.remove('none');
		fm.style.display='block';
	});
	fup.addEventListener('click', function() {
		fup.style.display='none';
		fdown.style.display='block';
		ul.classList.add('none');
		ul.classList.remove('showline');
		fm.style.display='none';
	});
    button1.addEventListener('click', function() {
        // 버튼을 클릭하면 드롭다운 메뉴를 토글합니다.
        dropdown_title.classList.toggle('show');
    });
    
    // 다른 곳을 클릭하면 드롭다운을 닫습니다.
    window.addEventListener('click', function(event) {
        if (!event.target.matches('.dropbtn')&&!event.target.matches('.btn')) {
            if (dropdown_title.classList.contains('show')) {
                dropdown_title.classList.remove('show');
            }
        }
    });
    /*장르 시대별 체크*/
    all.addEventListener('click', function()  {
		all.style.setProperty('color', '#04E632', 'important');
		_20.style.setProperty('color', '#999898', 'important');
		_10.style.setProperty('color', '#999898', 'important');
		_00.style.setProperty('color', '#999898', 'important');
		_90.style.setProperty('color', '#999898', 'important');
		_80.style.setProperty('color', '#999898', 'important');
	});
	_20.addEventListener('click', function()  {
		all.style.setProperty('color', '#999898', 'important');
		_20.style.setProperty('color', '#04E632', 'important');
		_10.style.setProperty('color', '#999898', 'important');
		_00.style.setProperty('color', '#999898', 'important');
		_90.style.setProperty('color', '#999898', 'important');
		_80.style.setProperty('color', '#999898', 'important');
	});
	_10.addEventListener('click', function()  {
		all.style.setProperty('color', '#999898', 'important');
		_20.style.setProperty('color', '#999898', 'important');
		_10.style.setProperty('color', '#04E632', 'important');
		_00.style.setProperty('color', '#999898', 'important');
		_90.style.setProperty('color', '#999898', 'important');
		_80.style.setProperty('color', '#999898', 'important');
	});
	_00.addEventListener('click', function()  {
		all.style.setProperty('color', '#999898', 'important');
		_20.style.setProperty('color', '#999898', 'important');
		_10.style.setProperty('color', '#999898', 'important');
		_00.style.setProperty('color', '#04E632', 'important');
		_90.style.setProperty('color', '#999898', 'important');
		_80.style.setProperty('color', '#999898', 'important');
	});
	_90.addEventListener('click', function()  {
		all.style.setProperty('color', '#999898', 'important');
		_20.style.setProperty('color', '#999898', 'important');
		_10.style.setProperty('color', '#999898', 'important');
		_00.style.setProperty('color', '#999898', 'important');
		_90.style.setProperty('color', '#04E632', 'important');
		_80.style.setProperty('color', '#999898', 'important');
	});
	_80.addEventListener('click', function()  {
		all.style.setProperty('color', '#999898', 'important');
		_20.style.setProperty('color', '#999898', 'important');
		_10.style.setProperty('color', '#999898', 'important');
		_00.style.setProperty('color', '#999898', 'important');
		_90.style.setProperty('color', '#999898', 'important');
		_80.style.setProperty('color', '#04E632', 'important');
	});
});