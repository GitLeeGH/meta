<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
<title>도메인</title>
<jsp:include page="/WEB-INF/views/header.jsp" />
<link type="text/css" rel="stylesheet" href="<c:url value='/css/busan/test_modal.css'/>" />
<link type="text/css" rel="stylesheet" href="<c:url value='resources/css/std/std.css'/>" />
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
		<h2>도메인</h2>

		<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="표준단어 조회"> <!-- 표준단어조회 -->
	        <caption>표준단어 검색폼</caption> <!-- 표준단어 검색폼 -->
	        <colgroup>
	        <col style="width:5%;">
	        <col style="width:20%;">
	        <col style="width:5%;">
	        <col style="width:20%;">
	        <col style="width:5%;">
	        <col style="width:20%;">
	        <col style="width:5%;">
	        <col style="width:20%;">
	        </colgroup>
                   
            <tbody>          
	            <tr>
	                <th scope="row"><label for="stndAsrt">표준분류</label></th> <!--  -->
	                <td>
	                    <select id="stndAsrt" name="stndAsrt" class="wd300">
	                            <option value="all">전체</option>
	                    </select>
	                </td>
	                <th scope="row"><label for="infotpId">도메인그룹/인포타입</label></th><!-- 도메인그룹/인포타입 -->
	                <td>
	                    <div id="selectBoxDiv"> <span></span>
                            <select id="uppDmngId" class="wd30p" name="uppDmngId">
                                <option value="">전체</option>
                            </select>
                            <select id="dmngId" class="wd30p" name="dmngId">
                                <option value="">전체</option></select>
                            <select id="infotpId" class="wd30p" name="infotpId">
                                <option value="">전체</option>
                            </select>
	                    </div>
	
	                </td>
	                <th scope="row"><label for="dmnLnm">도메인명</label></th> <!-- 도메인명 -->
	                <td><input type="text" id="dmnLnm" name="dmnLnm" class="wd200 ui-autocomplete-input" autocomplete="off"><span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span></td>
	                <th scope="row"><label for="cdValTypCd">코드값유형</label></th> <!-- 코드값유형 -->
	                    <td><select id="cdValTypCd" name="cdValTypCd">
	                            <option value="">---전체---</option> <!-- 전체 -->
	
	                            <option value="O">단순코드</option>
	
	                            <option value="L">목록코드</option>
	
	                        </select></td>
	            </tr>
	            <tr>
	                <th scope="row"><label for="dataType">데이터타입</label></th> <!-- 데이터타입 -->
	                <td>
	                    <select id="dataType" name="dataType">
	                        <option value="">---전체---</option> <!-- 전체 -->
	
	                        <option value="VARCHAR2">VARCHAR2</option>
	
	                        <option value="VARCHAR">VARCHAR</option>
	
	                        <option value="CHAR">CHAR</option>
	
	                        <option value="NUMBER">NUMBER</option>
	
	                        <option value="DATE">DATE</option>
	
	                        <option value="TIMESTAMP">TIMESTAMP</option>
	
	                        <option value="CLOB">CLOB</option>
	
	                        <option value="BLOB">BLOB</option>
	
	                        <option value="NUMERIC">NUMERIC</option>
	
	                        <option value="DATETIME">DATETIME</option>
	
	                    </select>
	
	                </td>
	            <th scope="row"><label for="encYn">암호화여부</label></th> <!-- 암호화여부 -->
	                <td>
	                      <select id="encYn" name="encYn">
	                          <option value="">전체</option> <!-- 전체 -->
	                          <option value="Y">예</option>
	                          <option value="N">아니요</option>
	                      </select>
	                </td>
	
	                          <th class="bd_none">기간</th> <!-- 기간 -->
	                             <td class="bd_none">
	                                <a href="#" class="tb_bt">1일</a> <!-- 1일 -->
	                                <a href="#" class="tb_bt">3일</a> <!-- 3일 -->
	                                <a href="#" class="tb_bt" id="seven">7일</a> <!-- 7일 -->
	                                <a href="#" class="tb_bt">1개월</a> <!-- 1개월 -->
	                                <a href="#" class="tb_bt">3개월</a> <!-- 3개월 -->
	                                <a href="#" class="tb_bt">6개월</a> <!-- 6개월 -->
	                             </td>
	                             <th>조회기간</th> <!-- 조회기간 -->
	                             <td><input id="searchBgnDe" name="searchBgnDe" type="text" class="wd80 hasDatepicker" value=""><img class="ui-datepicker-trigger" src="/wiseda/img/icon_05.gif" alt="날짜선택" title="날짜선택">  - <input id="searchEndDe" name="searchEndDe" type="text" class="wd80 hasDatepicker" value=""><img class="ui-datepicker-trigger" src="/wiseda/img/icon_05.gif" alt="날짜선택" title="날짜선택"></td>
	
	            </tr>
	            <tr>
	                <th scope="row"><label for="objDescn">설명</label></th> <!-- 설명 -->
	                <td colspan="7"><input type="text" id="objDescn" name="objDescn" class="wd95p"></td>
	
	
	            </tr>

            </tbody>
        </table>	
        <br/>	
        <button class="btn_search" id="btnSearch" name="btnSearch" style="">조회</button>
		<button class="btn_excel_down" id="btnExcelDown" name="btnExcelDown" style="">엑셀 내리기</button>
        <div id="grid"></div>
        
 
 
		<div class="sContTab">
			<button class="on">단어정보</button>
			<button onclick="">변경이력</button>
			<button onclick="">Where Used</button>
			<button onclick="">사전비교</button>
		</div>


		<!-- --------단어정보-------------------- -->
		<div id="tabs-1" aria-labelledby="ui-id-4" class="ui-tabs-panel ui-widget-content ui-corner-bottom" role="tabpanel" aria-expanded="true" aria-hidden="false" style="display: block;">
			<!-- 	상세정보 ajax 로드시 이용 -->
			<div id="detailInfo1">
			<!-- 메뉴상세정보 -->
		
			<div class="stit">단어 상세정보</div> <!-- 단어 상세정보 -->
			<!-- 입력폼 시작 -->
		   	<form id="frmInput" name="frmInput" action="" method="">
		   	
		   	<div class="tb_read">
			    <table border="0" cellspacing="0" cellpadding="0" summary="">
			        <caption>
			        조회조건<!-- 조회조건 -->
			        </caption>
			        <colgroup>
			            <col style="width:12%;">
			            <col style="width:38%;">
			            <col style="width:12%;">
			            <col style="width:38%;">
			        </colgroup>
			      <tbody>                   
				  	<tr>
						<th scope="row"><label for="stndAsrt">표준분류</label></th> <!--  -->
						<td>
							<input type="text" id="stndAsrtstndAsrtInput" name="stndAsrtstndAsrtInput" class="wd98p" value="" readonly="">
						</td>
				        <th scope="row"><label for="regTypCd">등록유형코드</label></th> <!-- 등록유형코드 -->
				        <td>
					        <select id="regTypCd" class="wd200" name="regTypCd" value="C" disabled="disabled">
				    	        <option value="C">신규</option>
				                <option value="U">변경</option>
				                <option value="D">삭제</option>
				            </select></td>
				    </tr>
				    <tr>
				      <!-- 표준단어논리명 -->
			      		<th scope="row"><label for="stwdLnmInput">논리명</label></th> <!-- 영문판용(한글버젼시 위 주석 사용) -->
			      		<td><input type="text" id="stwdLnmInput" name="stwdLnmInput" class="wd98p" value="" readonly=""></td>
			     		<!-- 표준단어물리명 -->
			     		<th scope="row"><label for="stwdPnmInput">물리명</label></th> <!-- 영문판용(한글버젼시 위 주석 사용) -->
			        	<td><input type="text" id="stwdPnmInput" name="stwdPnmInput" class="wd98p" value="" readonly=""></td>
			      	</tr>
			      	<tr>
			      		<th scope="row"><label for="engMeanInput">영문의미</label></th> <!-- 영문의미 -->
			        	<td><input type="text" id="engMeanInput" name="engMeanInput" class="wd98p" value="" readonly=""></td>
			       		<th scope="row"><label for="cchNmInput">한자명</label></th> <!-- 한자명 -->
			           	<td><input type="text" id="cchNmInput" name="cchNmInput" class="wd98p" value="" readonly=""></td>
				    </tr>
			        <tr>
						<th scope="row"><label for="orgDsInput">출처구분</label></th> <!-- 출처구분 -->
					    <td colspan="3"><input id="orgDsInput" name="orgDsInput" class="wd98p" value="" readonly=""></td>
				  	</tr>
					<tr>
						<th scope="row"><label for="objDescnInput">설명</label></th> <!-- 설명 -->
						<td colspan="3"><textarea id="objDescnInput" name="objDescnInput" class="wd98p" readonly="">숫자 1</textarea></td>
			         </tr>
					</tbody>
			    </table>
		    </div>
		    </form>
		   	<!-- 입력폼 끝 -->
			<div style="clear:both; height:10px;"><span></span></div>
			
			<div class="stit">요청상세정보</div> <!-- 요청상세정보 -->
		   	<!-- 입력폼 시작 -->
		   	<form id="frmOther" name="frmOther" action="" method="">
		   	
		   	<div class="tb_read">
			    <table border="0" cellspacing="0" cellpadding="0" summary="">
			        <caption>
			        조회조건<!-- 조회조건 -->
			        </caption>
			        <colgroup>
			            <col style="width:12%;">
			            <col style="width:38%;">
			            <col style="width:12%;">
			            <col style="width:38%;">
			        </colgroup>
			
			    	<tbody>                   
			      		
			
				         <tr>
				        	 <th scope="row"><label for="frsRqstDtm">최초요청일시</label></th> <!-- 최초요청일시 -->
				             <td><input type="text" id="frsRqstDtm" name="frsRqstDtm" class="wd98p" value="" readonly=""></td>
				             <th scope="row"><label for="frsRqstUserNm">최초요청자명</label></th> <!-- 최초요청자명 -->
				             <td><input type="text" id="frsRqstUserNm" name="frsRqstUserNm" class="wd98p" value="" readonly=""></td>
				             
				         </tr>
				         <tr>
				        	 <th scope="row"><label for="rqstDtm">요청일시</label></th> <!-- 요청일시 -->
				             <td><input type="text" id="rqstDtm" name="rqstDtm" class="wd98p" value="" readonly=""></td>
				             <th scope="row"><label for="rqstUserNm">요청자명</label></th> <!-- 요청자명 -->
				             <td><input type="text" id="rqstUserNm" name="rqstUserNm" class="wd98p" value="" readonly=""></td>
				             
				         </tr>
				         <tr>
				        	 <th scope="row"><label for="aprvDtm">승인일시</label></th> <!-- 승인일시 -->
				             <td><input type="text" id="aprvDtm" name="aprvDtm" class="wd98p" value="" readonly=""></td>
				             <th scope="row"><label for="aprvUserNm">승인자명</label></th> <!-- 승인자명 -->
				             <td><input type="text" id="aprvUserNm" name="aprvUserNm" class="wd98p" value="" readonly=""></td>
				             
				         </tr>
			        </tbody>
			    </table>
		    </div>
		    
		    </form>
			<div style="clear:both; height:30px;"><span></span></div>
			</div>
		</div>
		<!-- ---------------------------- -->
        
        <!--  변경이력 -->
		<div id="tabs-2" aria-labelledby="ui-id-5" class="ui-tabs-panel ui-widget-content ui-corner-bottom" role="tabpanel" aria-expanded="true" aria-hidden="false" style="display: block;">
			 <!-- 검색조건 입력폼 -->
			<div id="search_div">       
			    
				<form name="frmCodeDtl" action="" method="post">
					<div class="tb_basic" style="display: none;">
				    <table border="0" cellspacing="0" cellpadding="0" class="tb_write" summary="">
				        <caption>
				        조회조건<!-- 조회조건 -->
				        </caption>
				        <colgroup>
				            <col style="width:12%;">
				            <col style="width:38%;">
				            <col style="width:12%;">
				            <col style="width:38%;">
				        </colgroup>
				
				      <tbody><tr>
				      	<th>프로그램명</th> <!-- 프로그램명 -->
				      	<td>
				
				      	</td>
				      </tr>
				    </tbody></table>
				    </div>
			    </form>
			    <div style="clear:both; height:5px;"><span></span></div>
			</div>
			 <!-- 검색조건 입력폼 End -->    
			<div style="clear:both; height:5px;"><span></span></div>
		
				<!-- 그리드 입력 입력 -->
				<div id="grid2"></div>
				<!-- 그리드 입력 입력 End -->
					
			<div style="clear:both; height:30px;"><span></span></div>
		
		
	  	</div>        
        <!-- 		 -->
        
        <!-- Where Used -->
		<div id="tabs-3" aria-labelledby="ui-id-6" class="ui-tabs-panel ui-widget-content ui-corner-bottom" role="tabpanel" aria-expanded="true" aria-hidden="false" style="display: block;">
			 <!-- 검색조건 입력폼 -->
			<div id="search_div">       
			    
			
			    <div style="clear:both; height:5px;"><span></span></div>
			    
			     <!-- 조회버튼영역  -->
			
			     <!-- 조회버튼영역  -->
			</div>
			 <!-- 검색조건 입력폼 End -->    
			<div style="clear:both; height:5px;"><span></span></div>
			
				<!-- 그리드 입력 입력 -->
				<div id="grid3"></div>
				<!-- 그리드 입력 입력 End -->
						
				<div style="clear:both; height:30px;"><span></span></div>

	  	</div>    
	  	<!-- 사전비교 -->
		<div id="tabs-4" aria-labelledby="ui-id-7" class="ui-tabs-panel ui-widget-content ui-corner-bottom" role="tabpanel" aria-expanded="true" aria-hidden="false" style="display: block;">
		
			<div id="search_div">       
			    
			
			    <div style="clear:both; height:10px;"><span></span></div>
			    
			     <!-- 조회버튼영역  -->
			
			     <!-- 조회버튼영역  -->
			</div>
			 <!-- 검색조건 입력폼 End -->    
			<div style="clear:both; height:5px;"><span></span></div>
			
				<!-- 그리드 입력 입력 -->
				<div id="grid4"></div>
				<!-- 그리드 입력 입력 End -->
						
				<div style="clear:both; height:30px;"><span></span></div>
		</div>
	  	<!--  -->    
	</div>
</div>


</body>
<script type="text/javascript">
    console.log("테이블 관리");
    let gird;
    const data = {};
    // 문서가 준비되면
    document.addEventListener("DOMContentLoaded", function(){
        // 그리드 객체 생성
	    grid = new tui.Grid({
	        el: document.getElementById('grid'), // Container element
	        scrollX : false,
	        rowHeight:'auto',
	        header: { height: tuiHeaderHeight },
	        rowHeaders: ['checkbox','rowNum'],
	        editingEvent: 'click',
	        dat: data,
	        // 데이터 출력
	        columns:
	        [
	            {header:'표준분류', name:'stdClsfCd', align:'center' },
	            {header:'도메인논리명', name: 'domnLgcNm', align:'center'},
	            {header:'도메인물리명', name: 'domnPhysNm', align:'center'},
	            {header:'도메인그룹', name: 'domnGroupNm', align:'center'},
	            {header:'인포타입', name: 'infoTyNm', align:'center'},
	            {header:'데이터타입', name: 'datTyNm', align:'center'},
	            {header:'길이', name: 'len', align:'center'},
	            {header:'소수점', name: 'dcptLenh', align:'center'},
	            {header:'코드값유형코드', name: 'cdValTypCd', align:'center'},
	            {header:'부모도메인명', name: 'prentDomnNm', align:'center'},
	            {header:'암호화여부', name: 'encptYn', align:'center'},
	            {header:'영문전체의미', name: 'engNm', align:'center'},
	            {header:'설명', name: 'expln', align:'center'}

	        ],
	        pageOptions: {
	            useClient: true,
	            perPage: 10
	        }
	    });


	    grid.on('click', ev => {
	        const { rowKey, columnName, value } = ev;
	        console.log(rowKey, columnName, value);
	        console.log(grid.getRow(rowKey));

	        // 단어 상세정보 데이터 입력
	        document.getElementById("stndAsrtstndAsrtInput").value = grid.getRow(rowKey).stdClsfCd;
	        console.log("표준분류:", grid.getRow(rowKey).stdClsfCd);

	        document.getElementById("stwdLnmInput").value = grid.getRow(rowKey).stdVocaLgcNm;
	        document.getElementById("stwdPnmInput").value = grid.getRow(rowKey).stdVocaPhysNm;
	        document.getElementById("engMeanInput").value = grid.getRow(rowKey).engNm;
	        document.getElementById("cchNmInput").value = grid.getRow(rowKey).chncrtNm;
	        document.getElementById("orgDsInput").value = grid.getRow(rowKey).srcSeNm;
	        document.getElementById("objDescnInput").value = grid.getRow(rowKey).expln;
	        document.getElementById("frsRqstDtm").value = grid.getRow(rowKey).frstDmndDt;
	        document.getElementById("frsRqstUserNm").value = grid.getRow(rowKey).frstRqstrNm;
	        document.getElementById("rqstDtm").value = grid.getRow(rowKey).dmndDt;
	        document.getElementById("rqstUserNm").value = grid.getRow(rowKey).rqstrNm;
	        document.getElementById("aprvDtm").value = grid.getRow(rowKey).aprvDt;
	        document.getElementById("aprvUserNm").value = grid.getRow(rowKey).autzrNm;

        });
        // 표준분류 코드 가져오기
        getStdClsfCd();


    });


    // 기간 버튼 클릭 체크
    $(".tb_bt").click(function(){
        // 클릭 했을 때 tb_bt_select 클래스가 없으면
        if(!$(this).hasClass("tb_bt_select")){
            // tb_bt_select 클래스를 추가하고
            $(this).addClass("tb_bt_select");
            // 형제들 중에서 tb_bt_select 클래스를 가진 녀석은
            // tb_bt 클래스로 바꾼다.
            $(this).siblings(".tb_bt_select").removeClass("tb_bt_select").addClass("tb_bt");
        }
    });

    // 표준분류 코드 가져오기
    async function getStdClsfCd() {
    	  try {
    	    const response = await fetch("<c:url value='/domn/getStdClsfCd'/>", {
    	      method: "GET", // 또는 'PUT'
    	      headers: {
    	        "Content-Type": "application/json",
    	      }
    	    });

    	    const result = await response.json();
    	    console.log("표준뷴류 코드:", result);
    	    // stndAsrt 셀렉트 박스에 추가
    	    for(let i=0; i<result.contents.length; i++){
    	        $("#stndAsrt").append("<option value='"+result.contents[i]+"'>"+result.contents[i]+"</option>");
    	    }

    	    // uppDmngId 셀렉트 박스에 추가
    	    for(let i=0; i<result.contents.length; i++){
    	        $("#uppDmngId").append("<option value='"+result.contents[i]+"'>"+result.contents[i]+"</option>");
    	    }

    	  } catch (error) {
    	    console.error("실패:", error);
    	  }

    }

    //btnSearch 클릭 이벤트 조회
    $("#btnSearch").click(async function(){
    	console.log("조회");
    	// 표준 분류 select 된 값
    	const stndAsrt = document.getElementById("stndAsrt").value;
        console.log("표준분류:", stndAsrt);
        // 도메인명
        const dmnLnm = document.getElementById("dmnLnm").value;
        console.log("도메인명:", dmnLnm);
        // 도메인그룹 코드
        const uppDmngId = document.getElementById("dmngId").value;
        console.log("도메인그룹 코드:", uppDmngId);
        // 인포타입 코드
        let dmngId = document.getElementById("infotpId").value;
        // dmgIn 부산형데이터> 삭제
        console.log("인포타입 코드:", dmngId);

      // 조회 요청
        try{
            const response = await fetch("<c:url value='/domn/doMainList'/>", {
                method: "POST", // 또는 'PUT'
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify({
                    stndAsrt: stndAsrt,
                    dmnLnm: dmnLnm,
                    uppDmngId: uppDmngId,
                    dmngId: dmngId

                })
            });

            const result = await response.json();
            console.log("성공:", result);
            grid.resetData(result.contents);


        }catch(error){
            console.error("실패:", error);
        }
    });

    // uppDmngId 셀렉트 박스 변경 이벤트
    document.getElementById("uppDmngId").addEventListener("change", async function(){
        console.log("도메인그룹 변경");
        // 도메인그룹 코드
        const uppDmngId = document.getElementById("uppDmngId").value;
        console.log("도메인그룹 코드:", uppDmngId);
        // 분류에 따른 그룹타입 가져오기
        try{
            const response = await fetch("<c:url value='/domn/getGropupType'/>", {
                method: "POST", // 또는 'PUT'
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify({
                    stndAsrt: uppDmngId
                })
            });

            const result = await response.json();
            console.log("성공:", result);
            // 인포타입 셀렉트 박스 초기화
            $("#dmngId").empty();
            document.getElementById("dmngId").innerHTML = "<option value=''>전체</option>";
            // dmngId 셀렉트 박스에 추가
            for(let i=0; i<result.contents.length; i++){
                $("#dmngId").append("<option value='"+result.contents[i]+"'>"+result.contents[i]+"</option>");
            }

        }catch(error){
            console.error("실패:", error);
        }
    });

    // dmngId 셀렉트 박스 변경 이벤트
    document.getElementById("dmngId").addEventListener("change", async function(){
        console.log("인포타입 변경");
        // 인포타입 코드
        let dmngId = document.getElementById("dmngId").value;
        // dmgIn 부산형데이터> 삭제
        dmngId = dmngId.replace("부산형데이터>", "");
        console.log("인포타입 코드:", dmngId);
        // 도메인그룹 코드에 따른 인포타입 가져오기
        try{
            const response = await fetch("<c:url value='/domn/getInfoType'/>", {
                method: "POST", // 또는 'PUT'
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify({
                    uppDmngId: dmngId
                })
            });

            const result = await response.json();
            console.log("성공:", result);
            // 인포타입 셀렉트 박스 초기화
            $("#infotpId").empty();
            document.getElementById("infotpId").innerHTML = "<option value=''>전체</option>";
            // infotpId 셀렉트 박스에 추가
            for(let i=0; i<result.contents.length; i++){
                $("#infotpId").append("<option value='"+result.contents[i]+"'>"+result.contents[i]+"</option>");
            }

        }catch(error){
            console.error("실패:", error);
        }
    });
	// 토큰


    	
</script>

</html>