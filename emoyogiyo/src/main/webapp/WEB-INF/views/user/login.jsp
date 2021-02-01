<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/login.css?ver=1">
</head>
<body>
<span id="msg" data-id="${msg}"></span>
    <div class="login">
        <div class="title_login">로그인</div>
        <form action="/user/login" method="post">
            <table class="login_box">
                <tr>
                    <td>
                        <input type="text" name="user_id" placeholder="아이디">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="password" name="user_pw" placeholder="비밀번호">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input width="100%" type="submit" value="로그인">
                    </td>   
                </tr>
                <tr>
                    <td>
                        <a href="#">아이디찾기</a>/<a href="#">비밀번호찾기</a>
                    </td>
                </tr>
                <tr>
                    <td>
                    	<a href="/user/join">
                        	<input width="100%" type="button" value="회원가입">
                        </a>
                    </td>   
                </tr>
            </table>
        </form>
    </div>
<script>
	var msg = document.querySelector('#msg').dataset.id
	if(msg != ''){
		alert(msg);
	}	
</script>
</body>
</html>