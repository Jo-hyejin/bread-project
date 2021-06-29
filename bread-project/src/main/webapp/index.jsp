<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Empty Spring Project</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e0efad0b4eae5474047c9b7d00f55b7c&libraries=services"></script>
</head>
<body>

	<c:if test="${ empty userVO }">
		<a href="${ pageContext.request.contextPath }/signUp">회원가입</a>
		<br><br>
		<a href="${ pageContext.request.contextPath }/login">로그인</a>
	</c:if>
	
	<c:if test="${ not empty userVO }">
		<a href="${ pageContext.request.contextPath }/logout">로그아웃</a><br>
		<p>[${ userVO.username }]님 로그인 중...</p>
		<a href="${ pageContext.request.contextPath }/modify">회원정보 수정</a>
	</c:if>
	
	<br>

	<div id="map" style="width:100%;height:500px;"></div>

<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨 
    }; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
        
        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
        
        // 마커와 인포윈도우를 표시합니다
        displayMarker(locPosition, message);
            
      });    
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    
    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
        message = 'geolocation을 사용할수 없어요..'
        
    displayMarker(locPosition, message);
}

// 지도에 마커와 인포윈도우를 표시하는 함수입니다
function displayMarker(locPosition, message) {

	var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png', // 마커이미지의 주소입니다    
	    imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
	    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
	      
	// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
	
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({  
        map: map, 
        position: locPosition,
        image: markerImage // 마커이미지 설정 
    }); 
    
    var iwContent = message, // 인포윈도우에 표시할 내용
        iwRemoveable = true;

    // 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({
        content : iwContent,
        removable : iwRemoveable
    });
    
    // 인포윈도우를 마커위에 표시합니다 
    infowindow.open(map);
    
    // 지도 중심좌표를 접속위치로 변경합니다
    map.setCenter(locPosition);      
}
    
let addressArray = ['서울특별시 강남구 논현동 강남대로120길 33','서울특별시 강남구 논현동 150-5'];
//var latArray = [37.508374139362225,37.51136609972292]
var latArray = [${strLat}]
//var lngArray = [ 127.02613898607366, 127.03003288236724]
var lngArray = [ ${strLng}]
var imageList = ["http://localhost:7777/bread/resource/image/01_Butter_roll_C.png","http://localhost:7777/bread/resource/image/03_Croissant_C.png"]

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();


for(var i=0; i<addressArray.length; i++){
    
    var imageSrc = imageList[i], // 마커이미지의 주소입니다    
    imageSize = new kakao.maps.Size(64, 69) // 마커이미지의 크기입니다
      
    // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
    markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize),
        markerPosition = new kakao.maps.LatLng(latArray[i], lngArray[i]); // 마커가 표시될 위치입니다

    // 마커를 생성합니다
    let marker = new kakao.maps.Marker({
        position: markerPosition, 
        image: markerImage, // 마커이미지 설정 
        clickable: true // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map); 
    
 	// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
    var iwContent = '<div style="margin:20px;"><a href="${ pageContext.request.contextPath }/login">'+주소+'</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
        iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

    // 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({
        content : iwContent,
        removable : iwRemoveable
    });
        

    // 마커에 클릭이벤트를 등록합니다
    kakao.maps.event.addListener(marker, 'click', function() {
        // 마커 위에 인포윈도우를 표시합니다
        infowindow.open(map, marker);
       
    });
    
}
/* 
function storeInfo() {
	document.getElementById("storeInfo").innerHTML = "<div>되나?</div>";

}
 */
</script>
	
	<br><br><br>
	
	<div id="storeInfo"></div>
	
</body>
</html>









