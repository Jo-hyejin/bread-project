<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resource/css/layout.css?ver=1">  
<script>
	function checkLogin() {
		
		/*form 태그만 name으로 접근할 수 있음*/
		let f = document.loginForm
		if(f.userid.value == ''){
			alert('아이디를 입력해주세요')
			f.userid.focus()
			return false
		}
		
		if(f.password.value == ''){
			alert('비밀번호를 입력해주세요')
			f.password.focus()
			return false
		}
		
		return true
		
	}
</script>
</head>

<body>

<header>
	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"/>
</header>

<section>
	<div align="center">
		<hr>
		<h1>로그인</h1>
		<hr>
		<br>
																			<!-- submit이라는 이벤트가 발생하면 호출 -->
		<form id="loginForm" name="loginForm" action="${ pageContext.request.contextPath }/login" method="post" onsubmit="return checkLogin()">
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="userid"></td>
				</tr>
				<tr>
					<th>패스워드</th>
					<td><input type="password" name="password"></td>
				</tr>
			</table>
			<br>
			<button type="submit">로그인</button>
				
		</form>
	</div>
	
</section>

<footer>
	<jsp:include page="/WEB-INF/jsp/include/footer.jsp"/>
</footer>	

</body>
</html>