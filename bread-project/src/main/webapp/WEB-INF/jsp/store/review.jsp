<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Empty Spring Project</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resource/css/layout.css?ver=1">  
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e0efad0b4eae5474047c9b7d00f55b7c&libraries=services"></script>
<script>
	function userCheck(){
		if(${ empty userVO }){
			alert("로그인이 필요한 서비스입니다.")
			location.href='${ pageContext.request.contextPath }/reply/${ storeNo }';
		}
	}
	
	function btnDelete(replyNo){
		location.href='${ pageContext.request.contextPath }/reply/delete?replyNo='+replyNo+"&storeNo=${ storeNo }";
	}
</script>
<style>
#replyList > th, td {
	border-bottom: 1px solid #444444;
	padding: 10px;
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
.btnDelete{
	width:30px; 
	padding:5px 0px; 
	margin:0px; 
	font-size:12px;
    border-radius:5px;
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
		<h1>후기 목록</h1>
		<hr>
		<br>
		
		<form name="replyForm" action="${ pageContext.request.contextPath }/reply/${ storeNo }" method="post" onsubmit="return userCheck()">
			<input type="hidden" name="userId" value="${ userVO.userid }"/></td>
			<input type="hidden" name="storeNo" value="${ storeNo }"/></td>
			<table style="width:80%; margin-bottom:20px">
				<tr>
					<th width="10%">
						<input type="number" name="grade" step="0.5" min="0" max="5" placeholder="0" required
							style="height:40px; font-size: 20px">
					</th>
					<th>
						<input name="content" type="textarea" style="width:95%; height:45px;">
					</th>
					<th>
						<button class="button" style="width:100%; height:50px; font-size: 20px">↵</button>
					</th>
				</tr>
			</table>
		</form>
		<table id="replyList" style="width:100%;">
			<c:forEach items="${ replyList }" var="reply">
				<tr>
					<td width="20%">${ reply.userName }</td>
					<td>${ reply.content }</td>
					<td width="5%">${ reply.grade }</td>
					<td style="width: 20%; text-align:right">${ reply.regDate }
						<c:if test="${ not empty userVO }">
							<c:if test="${ userVO.userid eq reply.userId }">
							   <button class="button btnDelete" onclick="btnDelete(${ reply.no })">X</button>
							</c:if>
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</table> 
		
		<br><br>
	</div>

</section>

<footer>
	<jsp:include page="/WEB-INF/jsp/include/footer.jsp"/>
</footer>	

	
</body>
</html>
