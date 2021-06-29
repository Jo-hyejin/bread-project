<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function signUpForm(){
	window.opener.location.href="${ pageContext.request.contextPath }/signUp";
    window.close();
}
</script>
<style>
body{
margin: 10px;
}
button {
	width:100px;
    border: none;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 25px;
    font-weight: bold;
    margin: 5px;
    margin-top: 15px;
    cursor: pointer;
    border-radius:10px;
}
#user{
    width:290px;
    height:290px;
    background-color: #eacd9a;
    color:#490000;
}
#admin{
    width:290px;
    height:290px;
    background-color: #490000;
    color:#eacd9a;
    float: right;
}
</style>
</head>
<body>
	<button id="user" onclick="signUpForm()">사용자 회원</button>
	<button id="admin" onclick="">가게 사장님 회원</button>
</body>
</html>