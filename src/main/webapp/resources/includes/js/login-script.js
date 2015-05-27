$(function(){
	$(document).ready(function(){
		$ul = $('#userlabel')
		$pl = $('#passlabel')

		$iu = $('#InputEmail')
		$ip = $('#InputPassword')

		$iu.on('focus',function(){
			$ul.addClass('onfocus')
		})
		$iu.on('blur',function(){
			$ul.removeClass('onfocus')
		})

		$ip.on('focus',function(){
			$pl.addClass('onfocus')
		})
		$ip.on('blur',function(){
			$pl.removeClass('onfocus')
		})

		$('#signin').click(function(event){
			if($('#login').hasClass('active')) {
				$('#login').removeClass('active')
			} else {
				$('#login').addClass('active')
				$('body').css('overflow','hidden')
			}
			window.location.href.substr(0, window.location.href.indexOf('#'))
			event.stopPropagation();
		})
		$('#sic').click(function(event){
			$('#login').removeClass('active')
			$('body').css('overflow','visible')
			event.stopPropagation();
		})

		$('#login').click(function(event) {
			var container = $('#form-hold')
                        if(!container.is(event.target) && container.has(event.target).length === 0) {
				$('body').css('overflow','visible')
				$('#login').removeClass('active')
			}
			event.stopPropagation();
		})
	})
}(jQuery))