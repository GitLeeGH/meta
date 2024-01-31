<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
<%-- <title><spring:message code="comSymPrm.tableListManage.title" /> --%></title><!-- 테이블목록리스트 -->
<title>테이블목록리스트</title><!-- 테이블목록리스트 -->
<jsp:include page="/WEB-INF/views/header.jsp" />
<link type="text/css" rel="stylesheet" href="<c:url value='/css/busan/test_modal.css'/>" />



<!-- toast grid 추가 -->


<link rel="stylesheet" href="https://uicdn.toast.com/tui.pagination/latest/tui-pagination.css" />
<script src="https://uicdn.toast.com/tui.pagination/latest/tui-pagination.js"></script>

<link rel="stylesheet" href="https://uicdn.toast.com/grid/latest/tui-grid.css" />
<script src="https://uicdn.toast.com/grid/latest/tui-grid.js"></script>
</head>

<body>
<script>


</script>
<div id="contents">
	<div class="board_area">
		<h2>테이블 관리</h2><!-- 테이블목록관리 -->
		
				
        <div id="grid"></div>
        
	</div>
</div>


</body>
<script type="text/javascript">
    console.log("테이블 관리");
</script>

</html>