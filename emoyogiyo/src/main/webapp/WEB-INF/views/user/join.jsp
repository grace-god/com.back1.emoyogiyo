<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
            background-color: cornflowerblue;
        }
        .title_join{
            text-align: center;
            color: white;
            font-size: 50px;
            font-weight: 500;
            margin: 30px;
        }
        .join{
            position: absolute;
            top: 40%; left: 50%;
            transform: translate(-50%,-50%);
        }
        .join_box{
            width: 680px;
            background-color: white;
            padding: 30px;
            border-radius: 20px;
        }
        table{
            border-collapse: separate;
            border-spacing: 0 30px;
            color: cornflowerblue;
        }
        .star{
            color: red;
        }
        .join_box input[type=text],[type=password]{
            border: none;
            border-bottom: 1px solid grey;
        }
        .join_box input[type=text]:focus,[type=password]:focus {
            outline:2px solid cornflowerblue;
        }
        .join_box input[type=submit],[type=button] {
            background-color: cornflowerblue;
            border: none;
            border-radius: 20px;
            color: white;
            height: 30px;
        }
        .join_box input[type=submit]:hover,[type=button]:hover {
            color: turquoise;
        }
        .join_box input[type=submit]{
            width: 200px;
            height: 40px;
            font-size: 20px;
        }
        .join_submit{
            text-align: center;
        }

    </style>
</head>
<body>
    <div class="join">
        <div class="title_join">회원가입</div>
        <form id="frm" action="/user/join" method="post">
            <table class="join_box">
                <tr>
                    <td>아이디<span class="star">*</span></td>
                    <td>
                        <input type="text" name="user_id" placeholder="아이디">
                        <input type="button" value="아이디 중복확인">
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

