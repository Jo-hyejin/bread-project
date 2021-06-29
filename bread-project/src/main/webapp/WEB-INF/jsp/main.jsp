<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Empty Spring Project</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath}/resource/css/layout.css?ver=1">  
<!-- <link rel="stylesheet" href="${ pageContext.request.contextPath }/resource/css/board.css">  -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e0efad0b4eae5474047c9b7d00f55b7c&libraries=services"></script>

<style>
@font-face {
    font-family: 'Cafe24SsurroundAir';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24SsurroundAir.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
#scroll_banner {
	background-image: url('${ pageContext.request.contextPath}/resource/main-page/23_Scroll_Banner.png');
	background-size: 100% 400px;
	width: 14%; 
	height: 400px;
	position: fixed;
	right: 2%;
	}
	
</style>

</head>

<body>

<header>
   <jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"/>
</header>

<section>
<div id="map" style="width:84%; height:500px; float:left;"></div>
<div id="scroll_banner"></div>
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

   var imageSrc = "http://localhost:7777/bread/resource/image/19_User.png", // 마커이미지의 주소입니다    
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
    
//가게 이름
var nameArray = [${strName}];
//위도
var latArray = [${strLat}];
//경도
var lngArray = [ ${strLng}];
var strNo = [ ${strNo}];

//이미지
var imageList = [
            "http://localhost:7777/bread/resource/image/01_Butter_roll_C.png"
            ,"http://localhost:7777/bread/resource/image/02_Butter_roll_WB.png"
            ,"http://localhost:7777/bread/resource/image/03_Croissant_C.png"
            ,"http://localhost:7777/bread/resource/image/03_Croissant_C.png"
            ,"http://localhost:7777/bread/resource/image/04_Croissant_WB.png"
            ,"http://localhost:7777/bread/resource/image/01_Butter_roll_C.png"
            ,"http://localhost:7777/bread/resource/image/05_Sandwich_C.png"
            ,"http://localhost:7777/bread/resource/image/05_Sandwich_C.png"
            ,"http://localhost:7777/bread/resource/image/06_Sandwich_WB.png"
            ,"http://localhost:7777/bread/resource/image/07_Pretzel_C.png"
            ,"http://localhost:7777/bread/resource/image/07_Pretzel_C.png"
            ,"http://localhost:7777/bread/resource/image/08_Pretzel_WB.png"
            ,"http://localhost:7777/bread/resource/image/01_Butter_roll_C.png"
            ,"http://localhost:7777/bread/resource/image/05_Sandwich_C.png"
            ,"http://localhost:7777/bread/resource/image/06_Sandwich_WB.png"
            ,"http://localhost:7777/bread/resource/image/07_Pretzel_C.png"
            ,"http://localhost:7777/bread/resource/image/07_Pretzel_C.png"
            ,"http://localhost:7777/bread/resource/image/08_Pretzel_WB.png"
            ,"http://localhost:7777/bread/resource/image/01_Butter_roll_C.png"
            ];


for (var i = 0; i < nameArray.length; i ++) {
   
   var imageSrc = imageList[i], // 마커이미지의 주소입니다    
    imageSize = new kakao.maps.Size(64, 69) // 마커이미지의 크기입니다
      
    // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
    markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
   
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: new kakao.maps.LatLng(latArray[i], lngArray[i]), // 마커의 위치
        image: markerImage, // 마커이미지 설정 
        clickable: true // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
    });

    // 마커에 표시할 인포윈도우를 생성합니다 
    var infowindow = new kakao.maps.InfoWindow({
        content: '<div style="margin:20px;">'+nameArray[i]+'</div>' // 인포윈도우에 표시할 내용
    });

    // 마커에 mouseover 이벤트, mouseout 이벤트, click 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
    kakao.maps.event.addListener(marker, 'click', clickListener(infowindow, strNo[i]));
    
}//for
   
// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
function makeOverListener(map, marker, infowindow) {
    return function() {
        infowindow.open(map, marker);
    };
}
   
// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
function makeOutListener(infowindow) {
    return function() {
        infowindow.close();
    }
};
   
// 마커에 click 이벤트를 등록합니다
function clickListener(infowindow, no) {
   return function() {
      location.href = "${ pageContext.request.contextPath }/review/"+no;
   }
};

</script>
</section>

<footer>
   <jsp:include page="/WEB-INF/jsp/include/footer.jsp"/>
</footer>   

   
</body>
</html>
