document.addEventListener('DOMContentLoaded', function() {
    // 메뉴 버튼과 해당 내용을 연결하는 객체를 생성합니다.
    const menuButtons = [
        // {
        //     button: document.querySelector('.search_header > ul > li:nth-child(2) > button'), // 통합검색 버튼
        //     content: document.querySelectorAll('.search_body, .search_album, .search_artist'), // 모든 내용 선택
        // },
        {
            button: document.querySelector('.search_header > ul > li:nth-child(2) > button'), // 곡 버튼
            content: [document.querySelector('.search_body')],
        },
        {
            button: document.querySelector('.search_header > ul > li:nth-child(3) > button'), // 앨범 버튼
            content: [document.querySelector('.search_album')],
        },
        {
            button: document.querySelector('.search_header > ul > li:nth-child(4) > button'), // 가수 버튼
            content: [document.querySelector('.search_artist')],
        },
    ];

    // 각 메뉴 버튼에 클릭 이벤트 리스너를 추가합니다.
    menuButtons.forEach(menu => {
        menu.button.addEventListener('click', () => {
            // 모든 내용을 숨깁니다.
            menuButtons.forEach(menu => {
                menu.content.forEach(content => {
                    content.style.display = 'none';
                });
            });
            // 클릭한 버튼과 연결된 내용을 보이도록 설정합니다.
            menu.content.forEach(content => {
                content.style.display = 'block';
            });
        });
    });

    // 초기에는 통합검색 내용이 보이도록 설정합니다.
    menuButtons[0].content.forEach(content => {
        content.style.display = 'block';
    });
});





// $(document).ready(function (){
//     $('#like_heart').on('click', function (e){
//         $('.like_white').toggleClass('green');
//     });
// });
//
// $(document).ready(function (){
//     $('#artist_heart1').on('click', function (e){
//         $('.artist_white1').toggleClass('artist_green1');
//     });
// });
//
// $(document).ready(function (){
//     $('#artist_heart2').on('click', function (e){
//         $('.artist_white2').toggleClass('artist_green2');
//     });
// });
//
// $(document).ready(function (){
//     $('#artist_heart3').on('click', function (e){
//         $('.artist_white3').toggleClass('artist_green3');
//     });
// });
