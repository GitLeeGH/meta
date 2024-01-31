$(function(){
	
	$(function(){
		if(window.innerWidth >= 1240){
			$('#header nav').hover(function(){
				$("#gnb_dim").addClass('on');
				$("#snb_bg").animate({"height":"310px",}, 30).css({"border-top":"1px solid #e3007f"});
				$(this).animate({"height":"410px",}, 50);
				$("#header").addClass('on');
		    }, function() {
		    	$("#gnb_dim").removeClass('on');
				$("#snb_bg").animate({"height":"0",}, 30).css({"border-top":"none"});
				$(this).animate({"height":"110px",}, 50);
				$("#header").removeClass('on');
		    });
		}
	});
	
	$("#header nav #gnb>li>a").click(function(){
		if(window.innerWidth < 1240){
			if($(this).hasClass('on') === true){
				$(this).removeClass('on');
				$("#header nav #gnb li .menuS").removeClass('on').slideUp(200);
			}else{
				$("#header nav #gnb>li>a").removeClass('on');
				$("#header nav #gnb li .menuS").removeClass('on').slideUp(200);
				$("#gnb_dim").addClass('on');
				$(this).siblings('ul').stop().addClass('on').slideDown(200);
				$(this).addClass('on');
			}
		}
	});
	
	$("#header .util ul li.sitemap").click(function(){
		if(window.innerWidth < 1240){
			if($(this).hasClass('on') === false){
				$("#header nav").slideToggle(200);
				$("#gnb_dim").addClass('on');
				$(this).addClass('on');
				$("#header .util").animate({
					"height": $(window).height()
				}, 10).addClass('on');
			}else{
				$("#header nav").slideToggle(200);
				$("#gnb_dim").removeClass('on');
				$("#header .util ul li.sitemap").removeClass('on');
				$("#header nav #gnb>li>a").removeClass('on');
				$("#header nav #gnb li .menuS").removeClass('on').slideUp(200);
				$("#header .util").animate({
					"height": "auto"
				}, 10).removeClass('on');
			}
		}
	});
	
	$(window).on('resize', function(){
		if(window.innerWidth < 1240){
			$("#header nav #gnb>li>a").click(function(){
				e.preventDefault();
				return false;
			});
		}
	});
	
	$(window).scroll(function(){
		/* $("#snb").slideUp(100); */
		var headerLoc = $(window).scrollTop();
		if(window.innerWidth){
			if(headerLoc > 0){
				$("#header").addClass('stickyFix');
			}else{
				$("#header").removeClass('stickyFix');
			}
		}
	});
	
	$(function() {
		$('ul.mTab li').click(function() {
			var activeTab = $(this).attr('data-tab');
			$('ul.mTab li').removeClass('on');
			$('.tabcont').removeClass('on');
			$(this).addClass('on');
			$('#' + activeTab).addClass('on');
		})
	});
	
	$('.slider').slick({
		dots: true,
		arrows: false,
		infinite: true,
		autoplay: true,
		autoplaySpeed: 3000,
		speed: 500,
		fade: true,
		cssEase: 'linear'
	});
	
	
	// key code 9 tab 13 enter
	/*$('#visual_list .slick-dots .btn_pause').keydown(function(event){
		var v_keyCode = event.keyCode || event.which;
		if(v_keyCode == 9){
			if(event.shiftKey){
				$("#intro #visual_list .slick-dots>li:last-child").find('button').focus();
			}else{
				$("#inside .board_slide_list .slick-dots>li:first-child").find('button').first().focus();
			}
		}
	});*/


});
























// 체크박스 전체선택 이벤트 함수
function checkAllBox(e) {
	const trElements = document.querySelectorAll('.lineList tbody tr');
	for (let i = 0; i < trElements.length ; i++){
		trElements[i].querySelectorAll('input[type="checkbox"]')[0].checked = e.checked;
	}
}

// 체크박스 체크여부 확인
function checkBox(e) {
	if (e.checked) {
		const trElements = document.querySelectorAll('.lineList tbody tr');
		let checkedCnt = 0;
		for (let i = 0; i < trElements.length ; i++){
			if (trElements[i].querySelectorAll('input[type="checkbox"]')[0].checked) {
				checkedCnt++;
			} else {
				return false;
			}
		}
		if (checkedCnt == trElements.length) {
			document.getElementById('checkedAll').checked = true;
		}
	} else {
		document.getElementById('checkedAll').checked = false;
	}
}
