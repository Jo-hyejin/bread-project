<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

header {
	/*background-image: url('resource/main-page/22_Logo.jpg');*/
	background-origin: content-box;
	background-repeat: no-repeat;
	background-position: center;
	}

.topMenuContent{
	text-align: right;
}
.topMenuContent2{
	text-align: center;
	word-spacing: 10px;
}

</style>

<script>
   function popupOpen(){

   var popUrl = "${ pageContext.request.contextPath }/memberType";   //팝업창에 출력될 페이지 URL
   
   var popupWidth = '650';
   var popupHeight = '500';

   // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
    var popupX = (window.screen.width / 2) - (popupWidth / 2);
    var popupY= (window.screen.height / 2) - (popupHeight / 2);
    
     //팝업창 옵션(optoin)
   var popOption = "width=" + popupWidth +
               ", height=" + popupHeight +
               ", resizable=no" +
               ", scrollbars=no" +
               ", status=no" +
               ", left=" + popupX +
               ", top="+ popupY

      window.open(popUrl,"회원가입",popOption);
   }
</script>

<div class="topMenuContent">

<c:if test="${ not empty userVO }">
   <a href="${ pageContext.request.contextPath }/logout">로그아웃</a>
   <a>[${ userVO.username }]님 로그인 중...</a>
   <a href="${ pageContext.request.contextPath }/modify">회원정보 수정</a>
</c:if>
</div>

<div class="topMenuContent2">
<a href="${ pageContext.request.contextPath }/main">
	<img src="${ pageContext.request.contextPath }/resource/main-page/22_Logo.jpg" style= "width: 550px">
</a>
<br>
<br>
   <a>ㅣ</a>
   <a>공지사항</a>
   <a>ㅣ</a>
   <a>사이트 이용방법</a>
   <a>ㅣ</a>
   <a>고객센터</a>
   <a>ㅣ</a>
<c:if test="${ empty userVO }">
   <a href="javascript:popupOpen();">회원가입</a>
   <a>ㅣ</a>
   <a href="${ pageContext.request.contextPath }/login">로그인</a>
</c:if>

</div>