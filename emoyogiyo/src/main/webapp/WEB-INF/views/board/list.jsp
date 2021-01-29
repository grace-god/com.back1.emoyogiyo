<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="/css/reset.css">
    <style>
        body{
            background-color: cornflowerblue;
        }

        .nav{
            height: 30px;
            display: flex;
            align-items: center;
        }
        .nav_right_items{
            display: flex;
            margin-left: auto;
        }
        .nav_item{
            margin-left: 10px;
            color: white;
            margin: 5px;
            font-weight: 700;
        }
        .nav_item:hover{
            color: turquoise;
            cursor: pointer;
        }
        .store_name{
            width: 80%;
            display: inline-block;
            text-align: center;
            margin-left: 10%;
            margin-right: 10%;
            font-size: 30px;
            color: white;
            font-size: 50px;
            font-weight: 600;
        }
        .main{
            display: flex;
        }
        aside{
            flex-grow: 1;
            height: 100%;
            margin: 0 5%;
        }
        .left_aside{
            border: 1px solid black ;
        }
        section{
            flex-grow: 3;
        }
        .title{
            line-height: 40px;
            height: 40px;
            border-radius: 5px;
            background-color: white;
            text-align: center;
            font-size: 30px;
            width: 80%;
            margin: 40px auto 20px;
            color: cornflowerblue;
        }
        .contents{
            border-radius: 5px;
            overflow: scroll;
            -ms-overflow-style: none;
            height: 800px;
            background-color: white;
            display: grid;
            grid-template-columns: 1fr ;
            grid-template-rows: repeat(auto-fill, 280px);

        }
        .contents::-webkit-scrollbar{ 
            display:none; 
            
        }
        .rigt_aside{
            color: white;
        }
        .content{
            padding: 30px;
            border: 1px solid lightgrey;
            display: grid;
            grid-template-columns: 3fr 2fr;
            grid-template-areas:
                    "comtent_name comtent_name"
                    "img order "
                    "img basket"
                    "img review"
                    "img price "
                    "stars stars"
        }
        .comtent_name{
            grid-area: comtent_name; 
            text-align: center;
            margin-bottom: 15px;
            font-size: 20px;
            font-weight: 700;
            color: cornflowerblue;
        }
        .contentImg{
            grid-area: img; 
            width: 200px;
            height: 150px;
            float: right;
        }
        .content input[name="order"]{
            grid-area: order; 
        }
        .content input[name="basket"]{
            grid-area: basket; 
        }
        .content input[name="review"]{
            grid-area: review; 
        }
        .price{
            grid-area: price; 
            text-align: center;
            margin-bottom: 15px;
            font-size: 15px;
            font-weight: 700;
            color: cornflowerblue;
        }
        .stars{
            grid-area: stars; 
            margin-top: 20px;
            text-align: center;
        }
        .content input[type="button"]{
            background-color: cornflowerblue;
            border: none;
            border-radius: 20px;
            color: white;
            height: 30px;
        }
        .content input[type="button"]:hover{
            color: turquoise;
            cursor: pointer;
        }

    </style>
</head>
<body>
    <header>
        <div class="nav">
            <div class="nav_right_items">
                <div class="nav_item">프로필</div>
                <div class="nav_item">로그아웃</div>
            </div>
        </div>
        <div class="store_name">
            네네치킨
        </div>
    </header>
    <div class="title">메뉴</div>
    <div class="main">
        <!--왼쪽 사이드 -->
        <aside class="left_aside">광고</aside>
        <!--가운데 섹션 -->
        <section>
            <div class="contents">
                <div class="content">
                    <div class="comtent_name">후라이드</div>
                    <img class="contentImg" src="다운로드.jpg" alt="">
                    <input type="button" name="order" value="주문">
                    <input type="button" name="basket" value="장바구니">
                    <input type="button" name="review" value="리뷰">
                    <div class="price">가격:14000원</div>
                    <div class="stars">별점</div>
                </div>  
                <div class="content">
                    <div class="comtent_name">후라이드</div>
                    <img class="contentImg" src="다운로드.jpg" alt="">
                    <input type="button" name="order" value="주문">
                    <input type="button" name="basket" value="장바구니">
                    <input type="button" name="review" value="리뷰">
                    <div class="price">가격:14000원</div>
                    <div class="stars">별점</div>
                </div>  
                <div class="content">
                    <div class="comtent_name">후라이드</div>
                    <img class="contentImg" src="다운로드.jpg" alt="">
                    <input type="button" name="order" value="주문">
                    <input type="button" name="basket" value="장바구니">
                    <input type="button" name="review" value="리뷰">
                    <div class="price">가격:14000원</div>
                    <div class="stars">별점</div>
                </div>  
                <div class="content">
                    <div class="comtent_name">후라이드</div>
                    <img class="contentImg" src="다운로드.jpg" alt="">
                    <input type="button" name="order" value="주문">
                    <input type="button" name="basket" value="장바구니">
                    <input type="button" name="review" value="리뷰">
                    <div class="price">가격:14000원</div>
                    <div class="stars">별점</div>
                </div>  
                <div class="content">
                    <div class="comtent_name">후라이드</div>
                    <img class="contentImg" src="다운로드.jpg" alt="">
                    <input type="button" name="order" value="주문">
                    <input type="button" name="basket" value="장바구니">
                    <input type="button" name="review" value="리뷰">
                    <div class="price">가격:14000원</div>
                    <div class="stars">별점</div>
                </div>  
                <div class="content">
                    <div class="comtent_name">후라이드</div>
                    <img class="contentImg" src="다운로드.jpg" alt="">
                    <input type="button" name="order" value="주문">
                    <input type="button" name="basket" value="장바구니">
                    <input type="button" name="review" value="리뷰">
                    <div class="price">가격:14000원</div>
                    <div class="stars">별점</div>
                </div>  
                <div class="content">
                    <div class="comtent_name">후라이드</div>
                    <img class="contentImg" src="다운로드.jpg" alt="">
                    <input type="button" name="order" value="주문">
                    <input type="button" name="basket" value="장바구니">
                    <input type="button" name="review" value="리뷰">
                    <div class="price">가격:14000원</div>
                    <div class="stars">별점</div>
                </div>  
                <div class="content">
                    <div class="comtent_name">후라이드</div>
                    <img class="contentImg" src="다운로드.jpg" alt="">
                    <input type="button" name="order" value="주문">
                    <input type="button" name="basket" value="장바구니">
                    <input type="button" name="review" value="리뷰">
                    <div class="price">가격:14000원</div>
                    <div class="stars">별점</div>
                </div>  
                <div class="content">
                    <div class="comtent_name">후라이드</div>
                    <img class="contentImg" src="다운로드.jpg" alt="">
                    <input type="button" name="order" value="주문">
                    <input type="button" name="basket" value="장바구니">
                    <input type="button" name="review" value="리뷰">
                    <div class="price">가격:14000원</div>
                    <div class="stars">별점</div>
                </div>  
                <div class="content">
                    <div class="comtent_name">후라이드</div>
                    <img class="contentImg" src="다운로드.jpg" alt="">
                    <input type="button" name="order" value="주문">
                    <input type="button" name="basket" value="장바구니">
                    <input type="button" name="review" value="리뷰">
                    <div class="price">가격:14000원</div>
                    <div class="stars">별점</div>
                </div>  
                <div class="content">
                    <div class="comtent_name">후라이드</div>
                    <img class="contentImg" src="다운로드.jpg" alt="">
                    <input type="button" name="order" value="주문">
                    <input type="button" name="basket" value="장바구니">
                    <input type="button" name="review" value="리뷰">
                    <div class="price">가격:14000원</div>
                    <div class="stars">별점</div>
                </div>  
                <div class="content">
                    <div class="comtent_name">후라이드</div>
                    <img class="contentImg" src="다운로드.jpg" alt="">
                    <input type="button" name="order" value="주문">
                    <input type="button" name="basket" value="장바구니">
                    <input type="button" name="review" value="리뷰">
                    <div class="price">가격:14000원</div>
                    <div class="stars">별점</div>
                </div>  
                <div class="content">
                    <div class="comtent_name">후라이드</div>
                    <img class="contentImg" src="다운로드.jpg" alt="">
                    <input type="button" name="order" value="주문">
                    <input type="button" name="basket" value="장바구니">
                    <input type="button" name="review" value="리뷰">
                    <div class="price">가격:14000원</div>
                    <div class="stars">별점</div>
                </div>  
                <div class="content">
                    <div class="comtent_name">후라이드</div>
                    <img class="contentImg" src="다운로드.jpg" alt="">
                    <input type="button" name="order" value="주문">
                    <input type="button" name="basket" value="장바구니">
                    <input type="button" name="review" value="리뷰">
                    <div class="price">가격:14000원</div>
                    <div class="stars">별점</div>
                </div>  
                <div class="content">
                    <div class="comtent_name">후라이드</div>
                    <img class="contentImg" src="다운로드.jpg" alt="">
                    <input type="button" name="order" value="주문">
                    <input type="button" name="basket" value="장바구니">
                    <input type="button" name="review" value="리뷰">
                    <div class="price">가격:14000원</div>
                    <div class="stars">별점</div>
                </div>  
                <div class="content">
                    <div class="comtent_name">후라이드</div>
                    <img class="contentImg" src="다운로드.jpg" alt="">
                    <input type="button" name="order" value="주문">
                    <input type="button" name="basket" value="장바구니">
                    <input type="button" name="review" value="리뷰">
                    <div class="price">가격:14000원</div>
                    <div class="stars">별점</div>
                </div>  

            </div>
            
        </section>
        <!--오른쪽 사이드 -->
        <aside class="rigt_aside">
            <div>
                지도
            </div>
            <div>
                가게정보
            </div>
            <div>
                카테고리
            </div>
        </aside>
    </div>
</body>
</html>