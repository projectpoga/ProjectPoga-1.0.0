$(function(){
	$(document).ready(function(){
		$('.collapse').collapse({
			parent: true,
			toggle: false
		})

		$('.selectpicker').selectpicker();

		var view = false;
		$('.vl .btn-few').on('click', function() {
			view = false;
			listView(view, $(this))
		})
		$('.vl .btn-det').on('click', function() {
			view = true;
			listView(view, $(this))
		})

		function listView(chk, $btn) {
			if(chk) {
				$('.job-post-wrap .job-post-desc').each(function(){
					$(this).removeClass('hide');
				})
				$btn.each(function(){
					$(this).addClass('active');
					$('.vl .btn-few').removeClass('active');
				})
			} else {
				$('.job-post-wrap .job-post-desc').each(function(){
					$(this).addClass('hide');
				})
				$btn.each(function(){
					$(this).addClass('active');
					$('.vl .btn-det').removeClass('active');
				})
			}
		}

		$qc = $('#query-jobs-list')
		$rrtoggle = $('#refine-toggle')
		$refine = $('#refine-results')
		$hiderr = $('#hide-rr')
		$rrdull = $('#rr-dull')

		var top = $(window).scrollTop()
		var vtop = $('#vl1').offset().top
		var cheight = $qc.height()
		var wh = $(window).height()
		var ww = $(window).width()
		var check = false;

		$rrdull.removeClass('active')

		$(window).resize(function(){
			$('#vl1').css('top',0);

			if($refine.hasClass('active') && ww <= 768) {
				check = true
				rractive(check)
			} else {
				check = false
				rractive(check)
			}

			top = $(window).scrollTop()
			wh = $(window).height()
			vtop = $('#vl1').offset().top
			ww = $(window).width()
			cheight = $qc.height()

			if(ww >= 768 && ww <= 992) {
				fixTopPanelw(top)
			} else {
				fixTopPanel(top)
			}

			scrollTopFade(top)
		})

		$(window).scroll(function() {
			top = $(window).scrollTop()

			if(ww >= 768 && ww <= 992) {
				fixTopPanelw(top)
			} else {
				fixTopPanel(top)
			}

			scrollTopFade(top)
		})

		$(document).click(function(event) {
			var container = $refine
			var control = $rrtoggle
			if(!container.is(event.target) && !control.is(event.target) && container.has(event.target).length === 0) {
				$('body').css('overflow','visible')
				$refine.removeClass('active')
				$rrdull.removeClass('active')
			}
			event.stopPropagation();
		})

		$rrtoggle.click(function(event){
			check = true;
			if($sb.hasClass('sb-active') && $page.hasClass('sb-open')) {
				$sb.removeClass('sb-active')
				$page.removeClass('sb-open')
			}
			rractive(check)
			event.stopPropagation();
		})
		
		$hiderr.click(function(event){
			check = false;
			rractive(check)
			event.stopPropagation();
		})
		$sbtoggle.click(function(event){
			check = false;
			rractive(check)
			event.stopPropagation();
		})

		$('.scrollTop').on('click',function(event){
			$('html, body').animate(
				{ scrollTop: 0}, '250', 'swing'
			)
			event.stopPropagation();
		})

		function fixTopPanel(topv) {
			if(topv-vtop < cheight-100) {
				$('#vl1').css({
					'visibility':'visible'
				})
				if(topv+55 >= vtop) {
					$('#vl1').css({
						'top':topv-vtop+55,
						'box-shadow':'0px 4px 10px -3px #ccc',
						'-webkit-box-shadow':'0px 4px 10px -3px #ccc'
					})
				} else {
					$('#vl1').css({
						'top':0,
						'box-shadow': 'none',
						'-webkit-box-shadow':'none'
					})
				}
			} else {
				$('#vl1').css({
					'visibility':'hidden'
				})
			}
		}

		function fixTopPanelw(topv) {
			if(topv-vtop < cheight-100) {
				$('#vl1').css({
					'visibility':'visible'
				})
				if(topv+55 >= vtop) {
					$('#vl1').css({
						'top':topv-vtop-5,
						'box-shadow':'0px 4px 10px -3px #ccc',
						'-webkit-box-shadow':'0px 4px 10px -3px #ccc'
					})
				} else {
					$('#vl1').css({
						'top':0,
						'box-shadow': 'none',
						'-webkit-box-shadow':'none'
					})
				}
			} else {
				$('#vl1').css({
					'visibility':'hidden'
				})
			}
		}

		function scrollTopFade(topv) {
			if( topv > wh ) {
				$('.scrollTop').fadeIn(500)
			} else {
				$('.scrollTop').fadeOut(500)
			}
		}

		function rractive(chk) {
			if(chk) {
				$refine.addClass('active')
				$rrdull.addClass('active')
				$('body').css('overflow','hidden')
			} else {
				$refine.removeClass('active')
				$rrdull.removeClass('active')
				$('body').css('overflow','visible')
			}
		}

	})
}(jQuery))