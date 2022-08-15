<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="나의 정보">
    <meta name="description" content="">
    <title>Contact</title>
    <link rel="stylesheet" href="/css/member/reservation/nicepage.css" media="screen">
<link rel="stylesheet" href="/css/member/reservation/Contact.css" media="screen">
<link rel="stylesheet" href="/css/member/reservation/slide.css" media="screen">
 <link rel="stylesheet" type="text/css" href="/css/carinfo/readmap.css">
    <script class="u-script" type="text/javascript" src="/js/member/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="/js/member/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.14.1, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<style>

  .container {
    width: 1200px;
    margin: 0 auto;
    position: relative;
  }
  * {

  }
</style>

    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Contact">
    <meta property="og:type" content="website">
  </head>
   <body class="u-body u-xl-mode" data-lang="en">
   
   <div class="container">
      <section class="u-clearfix u-section-1" id="sec-54f1">
        <div class="u-clearfix u-sheet u-sheet-1">
          <img class="u-image u-image-default u-preserve-proportions u-image-1" src="/images/SJ/mypage/premium-icon-member-card-3945150.png" alt="" data-image-width="512" data-image-height="512">
          <h3 class="u-text u-text-default u-text-1" style="font-family: 'bedal';">${logindto.mname} 님의</h3>
          <h3 class="u-text u-text-default u-text-palette-1-base u-text-2" style="font-family: 'bedal';">예약 차량</h3>
          <h2 class="u-text u-text-custom-color-3 u-text-default u-text-3" style="font-family: 'bedal';"> ${cardto.rentcost}</h2>
          <h2 class="u-text u-text-default u-text-4" style="font-family: 'bedal';"> ${cardto.carname}</h2>
          <h2 class="u-text u-text-black u-text-default u-text-5" style="font-family: 'bedal';">만원</h2>
          <h5 class="u-text u-text-default u-text-6" style="font-family: 'bedal';"> ${cardto.caryearmodel}</h5>
          <h5 class="u-text u-text-default u-text-7" style="font-family: 'bedal';"> ${cardto.carpoint}</h5>
          <h5 class="u-text u-text-default u-text-8" style="font-family: 'bedal';"> ${cardto.category}</h5>
          <h5 class="u-text u-text-default u-text-9" style="font-family: 'bedal';">${cardto.carnumber}</h5>
          <div class="u-carousel u-gallery u-layout-thumbnails u-lightbox u-no-transition u-show-text-always u-gallery-1" id="carousel-e131" data-interval="5000" data-u-ride="carousel">
            <div class="u-carousel-inner u-gallery-inner" role="listbox">
              <div class="u-active u-carousel-item u-gallery-item u-carousel-item-1">
                <div class="u-back-slide">
                  <img class="u-back-image u-expanded" src="images/7.svg">
                </div>
                <div class="u-over-slide u-over-slide-1">
                  <h3 class="u-gallery-heading">Sample Title</h3>
                  <p class="u-gallery-text">Sample Text</p>
                </div>
              </div>
              <div class="u-carousel-item u-gallery-item u-carousel-item-2">
                <div class="u-back-slide">
                  <img class="u-back-image u-expanded" src="images/7.svg">
                </div>
                <div class="u-over-slide u-over-slide-2">
                  <h3 class="u-gallery-heading">Sample Title</h3>
                  <p class="u-gallery-text">Sample Text</p>
                </div>
              </div>
              <div class="u-carousel-item u-gallery-item u-carousel-item-3" data-image-width="2836" data-image-height="1875">
                <div class="u-back-slide">
                  <img class="u-back-image u-expanded" src="images/7.svg">
                </div>
                <div class="u-over-slide u-over-slide-3">
                  <h3 class="u-gallery-heading">Sample Title</h3>
                  <p class="u-gallery-text">Sample Text</p>
                </div>
                <style data-mode="XL" data-visited="true"></style>
                <style data-mode="LG"></style>
                <style data-mode="MD"></style>
                <style data-mode="SM"></style>
                <style data-mode="XS"></style>
              </div>
            </div>

          <img src="${cardto.carimage}" style="height:600px; width:1200;">

          </div> 
          
          <h3 class="u-text u-text-default u-text-10" style="font-family: 'bedal';"> 편안하게 타실 수 있도록,&nbsp;옵션까지 한눈에 보여드립니다.</h3>
          <div class="u-align-left u-border-3 u-border-grey-40 u-container-style u-group u-group-1">
            <div class="u-container-layout u-container-layout-1">
            <c:if test="${optdto.bluetooth != null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-2">
              </c:if>
              <c:if test="${optdto.bluetooth == null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-2" style="opacity: 0.4;">
              </c:if>
                <div class="u-container-layout">
                  <h5 class="u-align-center u-text u-text-11">
                    <span style="font-size: 1rem;">블루투스</span>
                    <span style="font-size: 1rem;"></span>
                  </h5>
                </div>
              </div>
              <c:if test="${optdto.rear_sensor != null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-3">
              </c:if>
              <c:if test="${optdto.rear_sensor == null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-3" style="opacity: 0.4;">
              </c:if>
                <div class="u-container-layout">
                  <h5 class="u-align-center u-text u-text-default u-text-12" > 후방센서</h5>
                </div>
              </div>
              <c:if test="${optdto.rear_camera != null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-4">
              </c:if>
              <c:if test="${optdto.rear_camera == null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-4" style="opacity: 0.4;">
              </c:if>
                <div class="u-container-layout u-valign-middle">
                  <h6 class="u-align-center u-text u-text-default u-text-13">후방 카메라</h6>
                </div>
              </div>
              <c:if test="${optdto.black_box != null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-5">
              </c:if>
              <c:if test="${optdto.black_box == null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-5" style="opacity: 0.4;">
              </c:if>
                <div class="u-container-layout u-valign-middle">
                  <h6 class="u-text u-text-default u-text-14">블랙박스</h6>
                </div>
              </div>
              <c:if test="${optdto.heated_seat != null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-6">
                </c:if>
                <c:if test="${optdto.heated_seat == null}">
                <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-6" style="opacity: 0.4;">
                </c:if>
                <div class="u-container-layout u-valign-middle">
                  <h6 class="u-text u-text-default u-text-15">열선시트</h6>
                </div>
              </div>
              <c:if test="${optdto.ventilated_seat != null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-7">
              </c:if>
              <c:if test="${optdto.ventilated_seat == null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-7" style="opacity: 0.4;">
              </c:if>
                <div class="u-container-layout">
                  <h6 class="u-text u-text-default u-text-16">통풍시트</h6>
                </div>
              </div>
              <c:if test="${optdto.smart_key != null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-8" style="margin: 0 auto;">
              </c:if>
              <c:if test="${optdto.smart_key == null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-8" style="opacity: 0.4;">
              </c:if>
                <div class="u-container-layout u-valign-middle">
                  <h6 class="u-align-center u-text u-text-default u-text-17">스마트키</h6>
                </div>
              </div>
              <c:if test="${optdto.sunroof !=null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-9">
                </c:if>
                <c:if test="${optdto.sunroof == null}">
                              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-9" style="opacity: 0.4;">
                                </c:if>
                <div class="u-container-layout">
                  <h6 class="u-text u-text-default u-text-18">선루프</h6>
                </div>
              </div>
              <c:if test="${optdto.navigation != null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-10">
              </c:if>
              <c:if test="${optdto.navigation == null}">
                            <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-10" style="opacity: 0.4;">
                            </c:if>
                <div class="u-container-layout u-valign-middle">
                  <h6 class="u-align-center u-text u-text-default u-text-19">네비게이션</h6>
                </div>
              </div>
              <c:if test="${optdto.non_smoking_vehicle != null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-11">
                </c:if>
                <c:if test="${optdto.non_smoking_vehicle == null}">
                              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-11" style="opacity: 0.4;">
                                </c:if>
                <div class="u-container-layout u-valign-middle">
                  <h6 class="u-align-center u-text u-text-default u-text-20">금연 차량</h6>
                </div>
              </div>
              <c:if test="${optdto.heated_handle != null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-12">
              </c:if>
              <c:if test="${optdto.heated_handle == null}">
                <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-12" style="opacity: 0.4;">
                </c:if>
                <div class="u-container-layout u-valign-middle">
                  <h6 class="u-text u-text-default u-text-21">열선 핸들</h6>
                </div>
              </div>
              <c:if test="${optdto.rear_warning_light != null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-13">
                </c:if>
                <c:if test="${optdto.rear_warning_light == null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-13" style="opacity: 0.4;">
                </c:if>
                <div class="u-container-layout u-valign-middle">
                  <h6 class="u-align-center u-text u-text-default u-text-22">후방 경고등</h6>
                </div>
              </div>
              <c:if test="${optdto.lane_departure_prevention != null}">
              <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-14">
              </c:if>
              <c:if test="${optdto.lane_departure_prevention == null}">
                            <div class="u-border-3 u-border-palette-1-base u-container-style u-group u-palette-1-base u-radius-50 u-shape-round u-group-14" style="opacity: 0.4;">
                            </c:if>
                <div class="u-container-layout u-valign-middle">
                  <h6 class="u-align-center u-text u-text-default u-text-23">차선방지이탈</h6>
                </div>
              </div>

            </div>

          </div>
<!-- 업체정보 -->

<div class="reviewArea" >
  <h4 class="titDep4" compName style="font-family: 'bedal';">&emsp;차 위치</h4><br>
</div>

<div class="u-align-left u-border-3 u-border-grey-40 u-container-style u-group u-group-1" style="float:center;" >
  
  <div id="map" style="width:1200px;height:350px;overflow:hidden;"></div>
<!-- <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div> -->
<div class="hAddr">
  <span class="title">${cardto.carpoint}<br>
  </span>
</div>
</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6eae01749ed46288f45cd68bb87a3238&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div
  mapOption = {
    center: new kakao.maps.LatLng('${cardto.x}', '${cardto.y}'), // 지도의 중심좌표
    level: 4 // 지도의 확대 레벨
  };
var map = new kakao.maps.Map(mapContainer, mapOption);
var imageSrc = 'https://kr.object.ncloudstorage.com/imagetest/carinfo/5b30ba63-3c38-4d93-b519-6898f2f0a840icon-charging-station-7144586.png', // 마커이미지의 주소입니다
  imageSize = new kakao.maps.Size(26, 40), // 마커이미지의 크기입니다
  imageOption = { offset: new kakao.maps.Point(27, 69) }; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
  markerPosition = new kakao.maps.LatLng('${cardto.x}', '${cardto.y}'); // 마커가 표시될 위치입니다

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
  position: markerPosition,
  image: markerImage // 마커이미지 설정
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);
</script>
</body>
</body>
</body>


</div>
<!-- //업체정보 -->
<br>
<br>
<Br>
<br>

          
        </div>
      </section>
</div>
<link rel="stylesheet" type="text/css" href="/css/member/body.css"/>
</body></html>