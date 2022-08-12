<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="util" uri="/ELFunctions" %>
    <!DOCTYPE html>
    <html lang="en">

      <title>ISOSIM Rent-Car</title>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
   <script src="/js/main/main.js"></script>
    <link rel="stylesheet" href="/css/main/main.css">

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
<script>

function read(noticeno){
       var url = "/user/notice/read";
       url += "?noticeno="+noticeno;
       location.href=url;
 
     }

</script>
    </head>

 <body class="">

    <!--

        <div id="container" class="">

            <div id="quickBtnDiv">
                <ul class="quickBtnUl">
                    <li class="quickBtn"><a href="#" aria-selected="" aria-controls=""><img
                                src="./images/icons/ecar.svg" alt=""></a></li>
                    <li class="quickBtn"><a href="#" aria-selected="" aria-controls=""><img
                                src="./images/icons/charg.svg" alt=""></a></li>
                    <li class="quickBtn"><a href="#" aria-selected="" aria-controls=""><img
                                src="./images/icons/convi.svg" alt=""></a></li>
                    <li class="quickBtn"><a href="#" aria-selected="" aria-controls=""><img
                                src="./images/icons/reserv.svg" alt=""></a></li>
                </ul>
            </div>

        -->

        <!-- 자동차버튼 클릭시 나오는 화면 -->
        <!--
                <div class="reservePanel" >
<br><br

                    <div class="containerReserve">

                            <ul class="reserveOptionUl">

            <div class="reservePanel">
                <br><br>
                <h1>차량 예약</h1>
                <div class="containerReserve">
                    <ul class="reserveOptionUl">
                        <li class="reserveOptionLi">
                            <p>
                            <h3>대여일</h3>
                            </p>
                            <p></p>
                            <input type="date" id="choosedate">
                        </li>

                        <li class="reserveOptionLi">
                            <p>
                            <h3>반납일</h3>
                            </p>
                            <p></p>
                            <input type="date" id="choosedate">
                        </li>

                        <li class="reserveOptionLi">
                            <p>
                            <h3>차종</h3>
                            </p>
                            <p></p>
                            <select class="selectCar">

                            
                                </li>

                                <li style="vertical-align: middle" class="reserveOptionLi">
                                    <p></p>
                                    <button type="submit" class="reserveBtn" onclick=""">검색</button>

                                <option value="" selected>차량을 선택해 주세요</option>
                                <option value="">테슬라 모델Y</option>
                                <option value="">테슬라 모델X</option>
                                <option value="">포르쉐 타이칸</option>
                                <option value="">현대 IONIQ6</option>

                            </select>
                        </li>

                        <li style="vertical-align: middle" class="reserveOptionLi">
                            <p></p>
                            <button type="submit" class="reserveBtn" onclick=""">검색</button>

                                    <p></p>
                                </li>

                            </ul>
                    </div>
<br><br>
                </div>
            </div>
        
        -->
<br><br><br>
<div class=" find" style="display: none">
                                <h1>충전소 찾기</h1>
                                <div class="containerFindDiv">

                                    <div>
                                        <input type="text" class="findInput">&nbsp;&nbsp;&nbsp;&nbsp;<button
                                            type="submit" class="findBtn">검색</button>
                                    </div>

                                </div>
                </div>

                <div class="find2" style="display: none">
                    <h1>주변 편의시설 찾기</h1>
                    <div class="containerFindDiv">
                        <div>
                            <input type="text" class="findInput">&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit"
                                class="findBtn">검색</button>
                        </div>

                    </div>
                </div>
                <br><br><br>

<!-- 이미지 슬라이드 -->

<div id="slideShow">
    <ul class="slides">
      <li>
        <img src="images/carImg/ioniq6c.png" alt="">
    </li>
      <li>
        <img src="images/carImg/modelXc.jpg" alt="">
      </li>
      <li>
        <img src="images/carImg/modelYc.jpg" alt="">
    </li>
    <li>
        <img src="images/carImg/taycanc.jpg" alt="">
    </li>
    </ul>
    <p class="controller">
      <!-- &lang: 왼쪽 방향 화살표 &rang: 오른쪽 방향 화살표 --> 
      <span class="prev">&lang;</span> 
      <span class="next">&rang;</span>
    </p>
  </div>

<!-- 이미지 슬라이드 end-->



<div class="noticeWrap">
    <div class="noticeInner">
        <div class="noticeHead" id="noticeHead">
            <div class="hline">
                <p>알려드려요</p><br>
                <h1>따끈한 공지사항</h1>
                <a href="./notice/list" class="btn-goLink">전체보기</a>
            </div>
        </div>

        <div class="noticeContent">   
            <ul class="notice-list" id="notice-list">
 <c:forEach var="dto" items="${mainNoticeList}">
                    <li>
                        <input type='hidden' value="${dto.noticeno}">
                        <a href="javascript:read('${dto.noticeno}')">${dto.title}</a>
                    </li>
</c:forEach>
                    
                
            </ul>
        
        </div>

    </div>
</div>


                <br><br><br>

                <div class="mainCont">


                    <div class="mainCont">


                        <ul class="quickBtnUl">
                        <h3 class="titDep2">서비스 이용안내</h3>
                            <li class="underQuickBtn"><a href=""><span><img src="./images/icons/ecar.svg" alt=""></span><br>차량예약안내</a></li>
                            <li class="underQuickBtn"><a href=""><span><img src="./images/icons/key.svg" alt=""></span><br>차량인수반납</a></li>
                            <li class="underQuickBtn"><a href=""><span><img src="./images/icons/membership.svg" alt=""></span><br>마일리지안내</a></li>
                            <li class="underQuickBtn"><a href=""><span><img src="./images/icons/info.svg" alt=""></span><br>취소/환불 안내</a></li>

                        </ul>

                    </div>
                </div>


        <!-- container end -->

</body>
</html>


