<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<div id="centerContainer">		
	<div>
		<form action="/user/login" method="post">
			<div><input type="text" name="user_id" placeholder="id" value="yim" required></div>
			<div><input type="password" name="user_pw" placeholder="password" value="123123" required></div>
			<div><input type="submit" value="LOGIN"></div>
		</form>
		<div style="color:red;">${msg}</div>
		<a href="/user/join">join</a>
	</div>		
</div>
