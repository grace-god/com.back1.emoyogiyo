//삭제 버튼 클릭
function idChk() {
	var user_id = document.getElementById('user_id').value;
	fetch(`/user/idChk/${user_id}`)
	.then(function(res) {			
		return res.json();
	}).then(function(myJson) {
	    console.log(myJson);
		if(myJson.idChk) { //중복된 아이디
			alert('중복된 아이디 입니다.');
		} else { //
			alert('사용 가능한 아이디 입니다.');
		}
	});
}