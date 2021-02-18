<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");
String path = request.getContextPath();
%>
<!DOCTYPE html>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style/reset.css">
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <title>카테고리</title>
    <style>
    body {font-family: 'Noto Sans KR', sans-serif;}
    #category { width: 1200px; margin: auto; padding: 40px 0;}

    /*menu*/
    .menu-left { float: left; width: 20%;}
    .list-category>li { margin: 10px; }
    .title-list-menu { margin-bottom: 10px; }
    .title-list-menu a { font-size: 20px; color: #111; font-weight: 700;}
    .on>.sub-list { display: block; }
    .sub-list {display: none;}
    /*category-content*/
    .content-right { float: left; width: 80%; box-sizing: border-box;}

    /*category-commercial-slider*/
    .container-slider-comm {margin-top: 30px; width: 100%;   height: auto; }
    .container-slider-comm .img-comm { width: 100%; }
    .swiper-button-next, .swiper-button-prev { color:rgb(53, 197, 240)!Important; }
    .swiper-pagination-bullet-active { background-color:rgb(53, 197, 240)!Important;  }

    /*category-sale-slider*/
    .sale-slider { margin-top: 30px; }
    .title-sale { margin: 20px 0; font-size: 20px; color: #333; font-weight: 700; }
    .prd-content-list:hover .prd-img>img{ transform: translate(-50%,-50%) scale(1.2); }
    .prd-img { position: relative; overflow: hidden; width: 100%; height: 225px;}
    .prd-img img { width: 100%;    position: absolute; top: 50%; left: 50%; width: 100%; transform: translate(-50%,-50%); transition: transform .2s; }
    .prd-text .brand { padding-top: 5px; color: #999; font-size: 13px; }
    .prd-text .title { padding-top: 5px; color: #222;}
    .prd-text .price {padding-top: 10px; font-size: 17px;  }
    .prd-text .price .percent-price {margin-right: 10px; font-weight: 800; color:rgb(53, 197, 240); }
    .prd-text .price .price-dis { color: #000; font-weight: 700;}
    </style>
<script>
    $(document).ready(function(){
        $(".menu-click").click(function(){
            $(this).addClass('on');
            $(this).siblings().removeClass('on');
        });
    });
</script>
</head>

<body>
    <div id="category">
        <section class="menu-left">
            <ul class="list-category">
                <li class="menu-click">
                    <div class="title-list-menu"><a href="#">주방</a><img src="" alt=""></div>
                    <ul class="sub-list">
                        <li>
                            <div><a href="#">그릇/홈세트</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">국내도자기그릇</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">수저/커트트리</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">컵/잔/텀블러</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">냄비/프라이팬</a><img src="" alt=""></div>
                        </li>
                    </ul>
                </li>
                <li class="menu-click" >
                    <div class="title-list-menu"><a href="#">가구</a><img src="" alt=""></div>
                    <ul class="sub-list">
                        <li>
                            <div><a href="#">소파/거실가구</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">침실가구</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">드레스룸</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">주방가구</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">테이블</a><img src="" alt=""></div>
                        </li>
                    </ul>
                </li>
                <li class="menu-click">
                    <div class="title-list-menu"><a href="#">패브릭</a><img src="" alt=""></div>
                    <ul class="sub-list">
                        <li>
                            <div><a href="#">침구</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">커튼/블라인드</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">카페트/러그</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">홈패브릭</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">공예/취미</a><img src="" alt=""></div>
                        </li>
                    </ul>
                </li>
                <li class="menu-click" >
                    <div class="title-list-menu"><a href="#">홈데코/조명</a><img src="" alt=""></div>
                    <ul class="sub-list">
                        <li>
                            <div><a href="#">조명</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">플라워/조명</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">데스크</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">홈갤러리</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">크리스마스</a><img src="" alt=""></div>
                        </li>
                    </ul>
                </li>
                <li class="menu-click" >
                    <div class="title-list-menu"><a href="#">가전</a><img src="" alt=""></div>
                    <ul class="sub-list">
                        <li>
                            <div><a href="#">대형가전</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">주방가전</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">생활가전</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">청소가전</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">이미용가전</a><img src="" alt=""></div>
                        </li>
                    </ul>
                </li>
                <li class="menu-click" >
                    <div class="title-list-menu"><a href="#">수납정리</a><img src="" alt=""></div>
                    <ul class="sub-list">
                        <li>
                            <div><a href="#">수납장/서랍장</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">리빙박스/수납함</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">바구니/바스켓</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">행거</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">선반</a><img src="" alt=""></div>
                        </li>
                    </ul>
                </li>
                <li class="menu-click" >
                    <div class="title-list-menu"><a href="#">생활</a><img src="" alt=""></div>
                    <ul class="sub-list">
                        <li>
                            <div><a href="#">욕실용품</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">수건/타월</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">청소용품</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">세탁용품</a><img src="" alt=""></div>
                        </li>
                        <li>
                            <div><a href="#">생필품</a><img src="" alt=""></div>
                        </li>
                    </ul>
                </li>
            </ul>
        </section>
        <section class="content-right">
            <div class="comm-slider">
                <h2 class="title-comm">주방</h2>
                <div class="swiper-container container-slider-comm">
                    <div class="swiper-wrapper">
                    <div class="swiper-slide"><img class="img-comm" src="images/comm_img1.jpg" alt=""></div>
                    <div class="swiper-slide"><img class="img-comm" src="images/comm_img2.jpg" alt=""></div>
                    <div class="swiper-slide"><img class="img-comm" src="images/comm_img3.jpg" alt=""></div>
                    <div class="swiper-slide"><img class="img-comm" src="images/comm_img4.jpg" alt=""></div>
                    <div class="swiper-slide"><img class="img-comm" src="images/comm_img5.jpg" alt=""></div>
                    <div class="swiper-slide"><img class="img-comm" src="images/comm_img6.jpg" alt=""></div>
                    </div>
                    <div class="swiper-pagination"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                </div>
            </div>
            <div class="sale-slider">
                <h2 class="title-sale">지금은 세일중! 특가찬스</h2>
                <div class="swiper-container container-slider-sale">
                    <div class="swiper-wrapper">
                    <div class="swiper-slide">
                      <div class="prd-content-list">
                            <div class="prd-img"><img src="images/list_img1.jpg" alt=""></div>
                            <div class="prd-text">
                                <h6 class="brand">보울보울</h6>
                                <h5 class="title">볼볼홈파티 주병세트</h5>
                                <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                            </div>
                      </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="prd-content-list">
                              <div class="prd-img"><img src="images/list_img2.jpg" alt=""></div>
                              <div class="prd-text">
                                  <h6 class="brand">보울보울</h6>
                                  <h5 class="title">볼볼홈파티 주병세트</h5>
                                  <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                              </div>
                        </div>
                      </div>
                      <div class="swiper-slide">
                        <div class="prd-content-list">
                              <div class="prd-img"><img src="images/list_img3.jpg" alt=""></div>
                              <div class="prd-text">
                                  <h6 class="brand">보울보울</h6>
                                  <h5 class="title">볼볼홈파티 주병세트</h5>
                                  <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                              </div>
                        </div>
                      </div>
                      <div class="swiper-slide">
                        <div class="prd-content-list">
                              <div class="prd-img"><img src="images/list_img4.jpg" alt=""></div>
                              <div class="prd-text">
                                  <h6 class="brand">보울보울</h6>
                                  <h5 class="title">볼볼홈파티 주병세트</h5>
                                  <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                              </div>
                        </div>
                      </div>
                      <div class="swiper-slide">
                        <div class="prd-content-list">
                              <div class="prd-img"><img src="images/list_img5.jpg" alt=""></div>
                              <div class="prd-text">
                                  <h6 class="brand">보울보울</h6>
                                  <h5 class="title">볼볼홈파티 주병세트</h5>
                                  <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                              </div>
                        </div>
                      </div>
                      <div class="swiper-slide">
                        <div class="prd-content-list">
                              <div class="prd-img"><img src="images/list_img6.jpg" alt=""></div>
                              <div class="prd-text">
                                  <h6 class="brand">보울보울</h6>
                                  <h5 class="title">볼볼홈파티 주병세트</h5>
                                  <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                              </div>
                        </div>
                      </div>
                    </div>
                    <div class="swiper-pagination"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                </div>
            </div>
            <div class="list-category-select">
                <div class="wrap-select-btn"></div>
            </div>
        </section>

    </div>

</body>
<script>
    const swiper1 = new Swiper('.container-slider-comm', {
        loop: true,
        autoplay: {
            delay: 2000,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.swiper-pagination',
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        scrollbar: {
            el: '.swiper-scrollbar',
        },
    });
    const swiper2 = new Swiper('.container-slider-sale', {
        slidesPerView: 4,
        spaceBetween: 20,
        slidesPerGroup: 3,
        loopFillGroupWithBlank: true,

        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },

    });
</script>
</html>