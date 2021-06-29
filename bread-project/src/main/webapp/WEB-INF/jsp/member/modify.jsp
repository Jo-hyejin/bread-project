<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resource/css/layout.css?ver=1">
<style>
table{
border-collapse:collapse;
margin-bottom: 20px
}

th, td{
padding: 10px
}

td{
 width:90%; 
 height:20px;
}

.button {
    width:100px;
    background-color: #eacd9a;
    border: none;
    color:#490000;
    padding: 15px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    font-weight: bold;
    margin: 4px;
    cursor: pointer;
    border-radius:10px;
}
</style>  
</head>
<body>

<header>
   <jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"/>
</header>

<section>
	<div align="center">
		<hr>
		<h1>회원정보 수정</h1>
		<hr>
		<br>
																			<!-- submit이라는 이벤트가 발생하면 호출 -->
		<form name="modifyForm" action="${ pageContext.request.contextPath }/modify" method="post">
			<table style="width: 50%">
				<tr>
					<th>ID</th>
					<td>${ userVO.userid }<input type="hidden" name="userid" value="${ userVO.userid }"/></td>
				</tr>
				<tr>
				<th width="25%">Password</th>
				<td>
					<input type="password" name="password" value="${ userVO.password }" required="required" autocomplete='off' style="width:90%; height:20px" />
				</td>	
				</tr>
				<tr>
					<th width="25%">Name</th>
					<td>
						<input type="text" name="username" value="${ userVO.username }" required="required" required="required" autocomplete='off' style="width:90%; height:20px" />
					</td>
				</tr>
				</tr>
				<tr>
					<th width="25%">Email</th>
					<td>
						<input type="email" name="email" value="${ userVO.email }" required="required" autocomplete='off' style="width:90%; height:20px" />
					</td>
				</tr>
				<tr>
					<th width="25%">Phone</th>
					<td>
						<input type="text" name="phone1" value="${ userVO.phone1 }" minlength="2" maxlength="3" required="required" digits="digits" autocomplete='off' autocomplete='off' style="width:20%; height:20px"/>-
						<input type="text" name="phone2" value="${ userVO.phone2 }" minlength="2" maxlength="3" required="required" digits="digits" autocomplete='off' autocomplete='off' style="width:20%; height:20px"/>-
						<input type="text" name="phone3" value="${ userVO.phone3 }" minlength="2" maxlength="3" required="required" digits="digits" autocomplete='off' autocomplete='off' style="width:20%; height:20px"/>
					</td>
				</tr>
			</table>
			<br>
			<button class="button" type="submit">확인</button>
				
		</form>
	</div>
</section>

<footer>
	<jsp:include page="/WEB-INF/jsp/include/footer.jsp"/>
</footer>	
	
</body>
</html>