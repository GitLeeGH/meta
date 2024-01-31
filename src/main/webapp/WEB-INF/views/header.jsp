<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
<title>부산시 데이터 통합 플랫폼(관리자)</title>

<link type="text/css" rel="stylesheet" href="<c:url value='resources/css/busan/dashboard.css'/>" />
<link type="text/css" rel="stylesheet" href="<c:url value='resources//css/busan/common.css'/>" />
<link type="text/css" rel="stylesheet" href="<c:url value='resources/css/busan/admin.css'/>" />
<link type="text/css" rel="stylesheet" href="<c:url value='resources/css/tableCommon/da_common.css'/>" />
<%-- <link type="text/css" rel="stylesheet" href="<c:url value='/css/busan/board.css'/>" /> --%>
<link type="text/css" rel="stylesheet" href="<c:url value='resources/css/busan/contents.css'/>" />
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.1/xlsx.full.min.js"></script>
<link href="<c:url value='resources/modules/tui-pagination/dist/tui-pagination.min.css' />" rel="stylesheet" type="text/css">
<link href="<c:url value='resources/modules/tui-grid/dist/tui-grid.min.css' />" rel="stylesheet" type="text/css">

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript" src="<c:url value='resources/js/busan/common.js' />" /></script>
<!-- toast grid 추가 -->
<script type="text/javascript" src="<c:url value='resources/modules/tui-pagination/dist/tui-pagination.min.js'/>" ></script>
<script type="text/javascript" src="<c:url value='resources/modules/tui-grid/dist/tui-grid.min.js'/>" ></script>
<script type="text/javascript" src="<c:url value='resources/js/busan/grid/com.tui.js'/>" ></script>
<script type="text/javascript" src="<c:url value='resources/js/busan/grid/com.tui.theme.js'/>" ></script>
<script type="text/javascript" src="<c:url value='resources/js/busan/moment.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='resources/modules/tui-file-uploader/dist/tui-code-snippet.min.js'/>" ></script>
<script type="text/javascript" src="<c:url value='resources/modules/tui-date-picker/dist/tui-date-picker.min.js'/>" ></script>
</head>
<body>
<div id="skip_menu">
	<a href="#contents">컨텐츠 바로가기</a>
	<a href="#header">메뉴 바로가기</a>
	<a href="#footer">푸터 바로가기</a>
</div>
<div id="gnb_dim"></div>
<div id="header">
	<header>
		<h1 class="logo"><a href="<c:url value='/admin/' />">부산시 데이터 통합 플랫폼 관리</a></h1>
		<div id="snb_bg"></div>
		<nav>
			<ul id="gnb">
				<li class="">
					<a href="#n" target="">표준데이터</a>
					<ul class="menuS">
						<li><a href="<c:url value='' />" title="" class="">표준용어</a></li>
						<li><a href="<c:url value='' />" title="" class="">도메인</a></li>
						<li><a href="<c:url value='' />" title="" class="">표준단어</a></li>
						
					</ul>
				</li>
				<li class="">
					<a href="#n" target="">DB Wixzrd Tools</a>
					<ul class="menuS">
						<li><a href="<c:url value='/admin/dwt/tableList.do' />" title="" class="">DB 생성툴</a></li>
						<li><a href="<c:url value='/admin/dwt/tableDataset.do' />" title="" class="">데이터셋</a></li>
						<li><a href="<c:url value='/admin/dwt/tableDataFormatter.do' />" title="" class="">데이터타입/포멧</a></li>
						<li><a href="<c:url value='/admin/dwt/tableDataImport.do' />" title="" class="">엑셀 Import</a></li>
						<li><a href="<c:url value='/admin/dwt/tableDataExport.do' />" title="" class="">엑셀 Export</a></li>
						
					</ul>
				</li>				
			</ul>
		</nav>
		<div class="util">
			<ul>
				<li><a href=""><img src="<c:url value='/images/busan/icon/search_icon.png' />" />검색버튼</a></li>
				<li><a href=""><img src="<c:url value='/images/busan/icon/mypage_icon.png' />" />마이페이지버튼</a></li>
				<li><a href=""><img src="<c:url value='/images/busan/icon/logout_icon.png' />" />로그아웃</a></li>
				<li class="sitemap"></li>
			</ul>
			<p>홍길동님 환영합니다.</p>
		</div>
	</header>
</div>


</body>
</html>
