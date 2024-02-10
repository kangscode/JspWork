function checkWrite(){
	if(document.writeForm.name.value==""){
		alert("이름을 입력하세요!");
		document.writeForm.name.focus();
	}
	else if(document.writeForm.id.value==""){
		alert("아이디를 입력하세요!");
		document.writeForm.id.focus();
	}
	else if(document.writeForm.pwd.value==""){
		alert("비밀번호를 입력하세요!");
		document.writeForm.pwd.focus();
	}
	else if(document.writeForm.pwd.value!=document.writeForm.repwd.value){
		alert("비밀번호가 틀립니다!");
		document.writeForm.repwd.focus();
	}
	else if(document.writeForm.email.value==""){
		alert("이메일을 입력하세요!");
		document.writeForm.email.focus();
	}
	else if(document.writeForm.tel1.value==""){
		alert("전화번호를 입력하세요!");
		document.writeForm.tel1.focus();
	}
	else if(document.writeForm.tel2.value==""){
		alert("전화번호를 입력하세요!");
		document.writeForm.tel2.focus();
	}
	else if(document.writeForm.tel3.value==""){
		alert("전화번호를 입력하세요!");
		document.writeForm.tel3.focus();
	}
	else if(document.writeForm.addr.value==""){
		alert("주소를 입력하세요!");
		document.writeForm.addr.focus();
	}
	else
		document.writeForm.submit();
}

function checkId(){
	var sId = document.writeForm.id.value;
	
	if(sId == ""){
		alert("아이디를 입력하세요!");
	} else{
		window.open("./checkId.jsp?id=" + sId , "", "width=350 height=100 left=500 top=200");
	}
}

function login(){
	if(document.loginForm.id.value == ""){
		alert("아이디를 입력하세요!");
	}
	else if(document.loginForm.pwd.value ==""){
		alert("비밀번호를 입력하세요!");
	}
	else{
		document.loginForm.submit();
	}
}