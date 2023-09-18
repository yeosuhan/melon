//체크박스 전체선택버튼
function selectAll() {
    let checkboxes = document.querySelectorAll(".check_btn");
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
// 삭제 버튼을 클릭했을 때 실행되는 함수
function onDeleteClick() {
    var checkboxes = document.querySelectorAll('.check_btn:checked'); // 체크된 체크박스 가져오기
    var songIds = []; // 삭제할 노래 ID를 저장할 배열

    checkboxes.forEach(function(checkbox) {
        songIds.push(checkbox.value); // 체크된 체크박스의 값을 배열에 추가
    });

    if (songIds.length === 0) {
        alert('선택된 노래가 없습니다.');
        return;
    }

    if (confirm('선택한 노래를 삭제하시겠습니까?')) {
        // JSON 데이터로 노래 ID를 서버에 전송
        fetch('/song/delete', {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ songIds: songIds }) // 선택한 노래 ID 배열을 JSON으로 변환하여 전송
        })
            .then(function(response) {
                if (response.ok) {
                    alert('삭제되었습니다.');
                    // 페이지 새로고침 또는 다른 작업 수행
                } else {
                    alert('삭제 실패11: ' + response.statusText);
                }
            })
            .catch(function(error) {
                console.error('삭제 요청 실패:', error);
            });
    }
}