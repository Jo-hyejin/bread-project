<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %><!-- Spring이 제공하는 폼 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resource/css/layout.css?ver=1">  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<style>

table{
border-collapse:collapse;
margin-bottom: 20px
}

th, td{
padding: 10px
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
	<h1>회원가입</h1>
	<hr>
	<br>
	<!-- commandName/modelAttribute : post로 폼의 내용을 보낼때 null체크를 하는 과정에서 조건을 충족하지 않았을 때 
									  get을 다시 호출하고 이전에 적었던 데이터를 다시 띄울건데 그 데이터를 저장하는 객체 
								      controller에서 해당 페이지를 화면에 출력하기 전에 객체 생성-->
	<form:form method="post" modelAttribute="memberVO">
		<table style="width: 50%">
			<tr>
				<th width="auto">ID</th>
				<td>
					<form:input path="userid" required="required" style="width:90%; height:20px" />
				</td>
			</tr>
			<tr>
				<th>Password</th>
				<td>
					<form:input path="password" required="required" autocomplete='off' cssStyle="width:90%; height:20px" />
				</td>	
			</tr>
			<tr>
				<th>Name</th>
				<td>
					<form:input path="username" minlength="2" required="required" autocomplete='off' cssStyle="width:90%; height:20px" />
				</td>
			</tr>
			</tr>
			<tr>
				<th>Email</th>
				<td>
					<form:input path="email" type="email" required="required" autocomplete='off' cssStyle="width:90%; height:20px" />
				</td>
			</tr>
			<tr>
				<th>Phone</th>
				<td>
					<form:input path="phone1" minlength="2" maxlength="3" required="required" digits="digits" autocomplete='off' style="width:20%; height:20px"/>-
					<form:input path="phone2" minlength="3" maxlength="4" required="required" digits="digits" autocomplete='off' style="width:30%; height:20px"/>-
					<form:input path="phone3" minlength="3" maxlength="4" required="required" digits="digits" autocomplete='off' style="width:30%; height:20px"/>
				</td>
			</tr>
		</table>
		<button class="button" type="submit">등록</button>
	</form:form>	
	</div>
</section>

<footer>
	<jsp:include page="/WEB-INF/jsp/include/footer.jsp"/>
</footer>	
	
</body>
</html>