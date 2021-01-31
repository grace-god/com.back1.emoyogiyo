<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link rel="stylesheet" href="/css/join.css">
	<script defer src="/js/user.js"></script>
</head>
<body>
    <div class="join">
        <div class="title_join">회원가입</div>
        <form id="frm" action="/user/join" method="post">
            <table class="join_box">
                <tr>
                    <td>아이디<span class="star">*</span></td>
                    <td>
                        <input type="text" id="user_id" name="user_id" placeholder="아이디">
                        <input type="button" value="아이디 중복확인" onclick="idChk()">
                        (영문 소문자/숫자,4~16자)
                    </td>
                </tr>
                <tr>
                    <td>비밀번호<span class="star">*</span></td>
                    <td>
                        <input type="password" name="user_pw" placeholder="비밀번호">
                        (영문 대소문자/숫자4~16자)
                    </td>
                </tr>
                <tr>
                    <td>비밀번호 확인<span class="star">*</span></td>
                    <td>
                        <input type="password" name="user_pw_chk" placeholder="비밀번호 확인">
                    </td>
                </tr>
                <tr>
                    <td>닉네임<span class="star">*</span></td>
                    <td>
                        <input type="text" name="user_nm" placeholder="닉네임">
                    </td>   
                </tr>
                <tr>
                    <td>성별<span class="star">*</span></td>
                    <td>
                        <label>여성<input type="radio" name="gender" value="여성" checked></label>
                        <label>남성<input type="radio" name="gender" value="남성"></label>	
                    </td>   
                </tr>
                <tr>
                    <td>생일<span class="star">*</span></td>
                    <td>
                        <input type="date" name="birthday" value="xxx" min="yyy" max="zzz">
                    </td>   
                </tr>
                <tr>
                    <td colspan="2" class="join_submit">
                        <input type="submit" value="회원가입" >
                    </td>   
                </tr>
            </table>
        </form>
    </div>
</body>
</html>

