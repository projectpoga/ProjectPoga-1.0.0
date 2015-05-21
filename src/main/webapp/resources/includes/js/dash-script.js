$(function(){
	$(document).ready(function(){
		$aside = $('#aside')
		$minbar = $('#min-bar')
		$options = $('#aside-options li .as-opt')
		$empdetails = $('#emp-details')
		$navbar = $('.navbar')
		$dashinner = $('#dash-inner')
		$astoggle = $('#astoggle')

		$minbar.on('click', function(e){

			if($aside.hasClass('minimized')) {
				$navbar.removeClass('minimized', 250, 'linear')
				$navbar.addClass('col-lg-offset-2', 250, 'linear')
				$dashinner.removeClass('minimized col')
				$dashinner.delay(250).addClass('col-lg-offset-2')
				$aside.removeClass('minimized', 250, 'linear')
				$empdetails.delay(250).fadeIn(200)
				$options.each(function() {
					$(this).delay(250).fadeIn(200);
				})
				$astoggle.removeClass('minimized')
			} else {
				$navbar.removeClass('col-lg-offset-2', 250, 'linear')
				$navbar.addClass('minimized', 250, 'linear')
				$dashinner.removeClass('col-lg-offset-2')
				$dashinner.delay(250).addClass('minimized col')
				$aside.addClass('minimized', 250, 'linear')
				$empdetails.fadeOut(100)
				$options.each(function() {
					$(this).fadeOut(100);
				})
				$astoggle.addClass('minimized')
			}

			e.preventDefault();

		})

		$astoggle.on('click', function(e){

			if($(this).hasClass('minimized')) {
				$empdetails.show(0)
				$options.each(function() {
					$(this).show(0)
				})
			}

			if($aside.hasClass('closed')) {
				$aside.removeClass('closed',250,'swing')
				$('body').css('overflow','hidden')
				$('html').append('<div class="rr-dull"></div>')
			} else {
				$aside.addClass('closed',250,'swing')
				$('body').css('overflow','')
				$('.rr-dull').remove()
			}

			e.preventDefault();

		})

		$(window).resize(function() {
			var winw = $(window).width()

			if(winw >=  768) {
				$('.rr-dull').remove()
				if($aside.hasClass('minimized')) {
					$empdetails.fadeOut(100)
					$options.each(function() {
						$(this).fadeOut(100);
					})
				}
			} else {
				if(!$aside.hasClass('closed')) {
					$('.rr-dull').remove()
					$('html').append('<div class="rr-dull"></div>')
				}
				if($astoggle.hasClass('minimized')) {
					$empdetails.show(0)
					$options.each(function() {
						$(this).show(0)
					})
				}
			}
		})
	})
}(jQuery))