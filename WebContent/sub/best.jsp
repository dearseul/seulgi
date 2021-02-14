<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="reset.css">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <title>베스트</title>
    <style>
    #best { width: 1200px; margin:0 auto; }

    /*btn*/
    .list-btn-best {margin: 50px; text-align: center; font-size: 20px; font-weight: 900;}
    .list-btn-best>li { display: inline-block; padding: 15px 20px; border-radius: 10px; border: 1px solid #eee; color: #333;}
    .list-btn-best>li.on { background-color: rgb(53, 197, 240); color: #fff;}

    /*list*/
    .list-best { overflow: hidden; } 
    .list-best-02 { display: none; }
    .prd-content-list { float: left; width: 24%; margin-right: 1%; margin-bottom: 4%;}
    .prd-content-list:nth-child(4) { margin-right: 0; }
    .title-sale { margin: 20px 0; font-size: 20px; color: #333; font-weight: 700; }
    .prd-content-list:hover .prd-img>img{ transform: translate(-50%,-50%) scale(1.2); }
    .prd-img { position: relative; overflow: hidden; width: 100%; height: 225px;}
    .prd-img img { width: 100%; position: absolute; top: 50%; left: 50%; width: 100%; transform: translate(-50%,-50%); transition: transform .2s; }
    .prd-text .brand { padding-top: 5px; color: #999; font-size: 13px; }
    .prd-text .title { padding-top: 5px; color: #222;}
    .prd-text .price {padding-top: 10px; font-size: 17px;  }
    .prd-text .price .percent-price {margin-right: 10px; font-weight: 800; color:rgb(53, 197, 240); }
    .prd-text .price .price-dis { color: #000; font-weight: 700;}
    </style>
    <script>
        $(document).ready(function(){
            $('.list-btn-best>li').click(function(){
                $(this).addClass('on');
                $(this).siblings().removeClass('on');
            });
            $('.btn-best-01').click(function(){
                $('.list-best-01').show();
                $('.list-best-02').hide();
            });
            $('.btn-best-02').click(function(){
                $('.list-best-02').show();
                $('.list-best-01').hide();
            });
        });
    </script>
</head>
<body>
    <div id="best">
        <ul class="list-btn-best">
            <li class="btn-best-01 on"><a href="#">실시간 베스트</a></li>
            <li class="btn-best-02"><a href="#">역대 베스트</a></li>
        </ul>
        <section class="setion-best">
            <ul class="list-best list-best-01">
                <li class="prd-content-list">
                    <div class="prd-img"><img src="images/list_img1.jpg" alt=""></div>
                    <div class="prd-text">
                        <h6 class="brand">보울보울</h6>
                        <h5 class="title">볼볼홈파티 주병세트</h5>
                        <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                    </div>
                </li>
                <li class="prd-content-list">
                    <div class="prd-img"><img src="images/list_img1.jpg" alt=""></div>
                    <div class="prd-text">
                        <h6 class="brand">보울보울</h6>
                        <h5 class="title">볼볼홈파티 주병세트</h5>
                        <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                    </div>
                </li>
                <li class="prd-content-list">
                    <div class="prd-img"><img src="images/list_img1.jpg" alt=""></div>
                    <div class="prd-text">
                        <h6 class="brand">보울보울</h6>
                        <h5 class="title">볼볼홈파티 주병세트</h5>
                        <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                    </div>
                </li>
                <li class="prd-content-list">
                    <div class="prd-img"><img src="images/list_img1.jpg" alt=""></div>
                    <div class="prd-text">
                        <h6 class="brand">보울보울</h6>
                        <h5 class="title">볼볼홈파티 주병세트</h5>
                        <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                    </div>
                </li>
                <li class="prd-content-list">
                    <div class="prd-img"><img src="images/list_img1.jpg" alt=""></div>
                    <div class="prd-text">
                        <h6 class="brand">보울보울</h6>
                        <h5 class="title">볼볼홈파티 주병세트</h5>
                        <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                    </div>
                </li>
                <li class="prd-content-list">
                    <div class="prd-img"><img src="images/list_img1.jpg" alt=""></div>
                    <div class="prd-text">
                        <h6 class="brand">보울보울</h6>
                        <h5 class="title">볼볼홈파티 주병세트</h5>
                        <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                    </div>
                </li>
                <li class="prd-content-list">
                    <div class="prd-img"><img src="images/list_img1.jpg" alt=""></div>
                    <div class="prd-text">
                        <h6 class="brand">보울보울</h6>
                        <h5 class="title">볼볼홈파티 주병세트</h5>
                        <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                    </div>
                </li>
                <li class="prd-content-list">
                    <div class="prd-img"><img src="images/list_img1.jpg" alt=""></div>
                    <div class="prd-text">
                        <h6 class="brand">보울보울</h6>
                        <h5 class="title">볼볼홈파티 주병세트</h5>
                        <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                    </div>
                </li>
            </ul>
            <ul class="list-best list-best-02">
                <li class="prd-content-list">
                    <div class="prd-img"><img src="images/list_img2.jpg" alt=""></div>
                    <div class="prd-text">
                        <h6 class="brand">보울보울</h6>
                        <h5 class="title">볼볼홈파티 주병세트</h5>
                        <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                    </div>
                </li>
                <li class="prd-content-list">
                    <div class="prd-img"><img src="images/list_img3.jpg" alt=""></div>
                    <div class="prd-text">
                        <h6 class="brand">보울보울</h6>
                        <h5 class="title">볼볼홈파티 주병세트</h5>
                        <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                    </div>
                </li>
                <li class="prd-content-list">
                    <div class="prd-img"><img src="images/list_img4.jpg" alt=""></div>
                    <div class="prd-text">
                        <h6 class="brand">보울보울</h6>
                        <h5 class="title">볼볼홈파티 주병세트</h5>
                        <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                    </div>
                </li>
                <li class="prd-content-list">
                    <div class="prd-img"><img src="images/list_img2.jpg" alt=""></div>
                    <div class="prd-text">
                        <h6 class="brand">보울보울</h6>
                        <h5 class="title">볼볼홈파티 주병세트</h5>
                        <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                    </div>
                </li>
                <li class="prd-content-list">
                    <div class="prd-img"><img src="images/list_img3.jpg" alt=""></div>
                    <div class="prd-text">
                        <h6 class="brand">보울보울</h6>
                        <h5 class="title">볼볼홈파티 주병세트</h5>
                        <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                    </div>
                </li>
                <li class="prd-content-list">
                    <div class="prd-img"><img src="images/list_img4.jpg" alt=""></div>
                    <div class="prd-text">
                        <h6 class="brand">보울보울</h6>
                        <h5 class="title">볼볼홈파티 주병세트</h5>
                        <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                    </div>
                </li>
                <li class="prd-content-list">
                    <div class="prd-img"><img src="images/list_img6.jpg" alt=""></div>
                    <div class="prd-text">
                        <h6 class="brand">보울보울</h6>
                        <h5 class="title">볼볼홈파티 주병세트</h5>
                        <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                    </div>
                </li>
                <li class="prd-content-list">
                    <div class="prd-img"><img src="images/list_img5.jpg" alt=""></div>
                    <div class="prd-text">
                        <h6 class="brand">보울보울</h6>
                        <h5 class="title">볼볼홈파티 주병세트</h5>
                        <h4 class="price"><span class="percent-price">35%</span><span class="price-dis">36900원</span></h4>
                    </div>
                </li>
            </ul>
        </section>
    </div>
</body>
</html>