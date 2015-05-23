$(function(){

	$(document).ready(function() {

		$sb = $('.sidebar')
		$page = $('.wrap')
		$sbtoggle = $('#sb-toggle')
		$hidesb = $('#hide-sidebar')
		$footer = $('#info-wrap')

		var bool = 1;

		$('[data-toggle="tooltip"]').tooltip('hide');
		/*var currpos = $sbtoggle.offset().top+57;
		var fpos = $footer.offset().top;

		if(currpos >= fpos) {
			$sbtoggle.addClass('change')
		} else {
			$sbtoggle.removeClass('change')
		}*/

		$(document).click(function(event) {
			var container = $sb
			var control = $sbtoggle
			if(!container.is(event.target) && !control.is(event.target) && container.has(event.target).length === 0) {
				$sb.removeClass('sb-active')
				$page.removeClass('sb-open')
			}
			if(bool === 1) {
				$('#sb-toggle[data-toggle="tooltip"]').tooltip('show');
				setTimeout(function(){
					$('#sb-toggle[data-toggle="tooltip"]').tooltip('hide');
				},3000)
				bool = 3;
			}
		})

		setTimeout(function() {
			if(bool === 1) {
				$sb.removeClass('sb-active')
				$page.removeClass('sb-open')
				$('#sb-toggle[data-toggle="tooltip"]').tooltip('show');
				setTimeout(function(){
					$('#sb-toggle[data-toggle="tooltip"]').tooltip('hide');
				},3000)
			}
		}, 3000)

		$hidesb.click(function(event){
			if($sb.hasClass('sb-active') && $page.hasClass('sb-open')) {
				$sb.removeClass('sb-active')
				$page.removeClass('sb-open')
			}
		})
		$sbtoggle.click(function(event){
			/*if($sb.hasClass('sb-active') && $page.hasClass('sb-open')) {
				$sb.removeClass('sb-active')
				$page.removeClass('sb-open')
				$('#sb-toggle[data-toggle="tooltip"]').tooltip('hide')
			} else {*/
			$sb.addClass('sb-active')
			$page.addClass('sb-open')
			$('#sb-toggle[data-toggle="tooltip"]').tooltip('hide')
			$(this).css('z-index','999')
			$sb.removeClass('hover')
		})

		$sbtoggle.hover(function(){
			$sb.addClass('hover')
			$(this).css('z-index','1200')
		},function(){
			$sb.css('left','')
			$sb.removeClass('hover')
		})

		/*$(window).scroll(function(event){
			var currpos = $sbtoggle.offset().top+57;
			var fpos = $footer.offset().top;

			if(currpos >= fpos) {
				$sbtoggle.addClass('change')
			} else {
				$sbtoggle.removeClass('change')
			}
		})*/
		$('#category-body').bind('scroll', function() {
	        if( $(this).scrollTop() + $(this).innerHeight() >= this.scrollHeight ) {
	        	$(this).removeClass('reached-bottom')
	        } else {
	        	$(this).addClass('reached-bottom')
	        }
	    })
	})
}(jQuery))