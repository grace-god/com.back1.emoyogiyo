<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>네네치킨</title>
	<link rel="stylesheet" href="/css/store.css?ver=1">
</head>
<body>
    <div class="box">
        <div class="store_name">네네치킨</div>
        <div class="title">메뉴</div>
        <!--왼쪽 사이드 -->
        <aside class="left_aside">
            <div>광고</div>
            <div class="advertising"></div>
        </aside>
        <section>
            <div class="contents">
	            <c:forEach items="${requestScope.list}" var="item">
	                <div class="content">
	                    <div class="comtent_name">${item.menu_nm}</div>
	                    <img class="contentImg" src="/img/${item.menu_img}" alt="">
	                    <input type="button" name="order" value="주문">
	                    <input type="button" name="basket" value="장바구니">
	                    <input type="button" name="review" value="리뷰">
	                    <div class="price">${item.price}</div>
	                    <div class="stars">별점</div>
	                </div>  
				</c:forEach>
            </div>    
        </section>
            <!--오른쪽 사이드 -->
        <aside class="rigt_aside">
	        <c:forEach items="${requestScope.inf}" var="item">
	            <div>지도</div>
	            <div id="map"></div> 
	            <div>주소</div>
	            <div class="store_add">${item.store_address}</div>
	            <div>가게정보</div>
	            <div class="store_story"></div>
	            <div>카테고리</div>
	            <div class="category">${item.category}</div>
	            <div>전화번호</div>
	            <div class="store_ph">${item.store_call}</div>
	            <div>영업시간</div>
	            <div class="business_time">${item.business_time}</div>
	        </c:forEach>
        </aside>
    </div>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=51747b8eb8e6d4e36c45d01b5818194b&libraries=services,clusterer,drawing"></script>
    <script type="text/javascript" src="/js/kakao_map_api.js"></script>
</body>
</html>