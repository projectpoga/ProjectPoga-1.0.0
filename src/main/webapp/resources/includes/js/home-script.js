$(function(){
	$(document).ready(function(){
		$navbar = $('.navholder')
		$welcome = $('#welcome')
		$welbody = $('#welcome-body')
		$dull = $('.dullness')
		$nav = $('.navbar')

		new WOW().init();
		$('.background-carousel .carousel').carousel({
			pause : 'false'
		});

		$('.counter').counterUp({
			delay: 10, // the delay time in ms
			time: 1000 // the speed time in ms
		});

		var maxh = 1200;
		var minh = 900;
		var minhlg = 650;

		var navhr = $navbar.height();
		var welhr = $welcome.outerHeight();
		var winhr = $(window).height();
		var winwr = $(window).width();

		if(winhr <= minh && winwr > 768 && winwr <= 992) {
			$welcome.css('height',minh-navhr)
			$dull.css('height',minh)
			$('div.wrapper').css('height', minh)
			$('.background-carousel .carousel-inner .item').css('height',minh)
		} else if(winwr > 992) {
			if(winhr < minhlg) {
				$welcome.css('height',minhlg-navhr)
				$dull.css('height',minhlg)
				$('div.wrapper').css('height',minhlg)
				$('.background-carousel .carousel-inner .item').css('height',minhlg)
			} else {
				$welcome.css('height',winhr-navhr)
				$dull.css('height',winhr)
				$('div.wrapper').css('height',winhr)
				$('.background-carousel .carousel-inner .item').css('height',winhr)
			}
		} else if(winwr < 768) {
			$welcome.css('height',maxh-navhr)
			$dull.css('height',maxh)
			$('div.wrapper').css('height',maxh)
			$('.background-carousel .carousel-inner .item').css('height',maxh)
		}

		$(window).resize(function() {
			var navhr = $navbar.height();
			var welhr = $welcome.outerHeight();
			var winhr = $(window).height();
			var winwr = $(window).width();

			if(winhr <= minh && winwr > 768 && winwr <= 992) {
				$welcome.css('height',minh-navhr)
				$dull.css('height',minh)
				$('div.wrapper').css('height', minh)
				$('.background-carousel .carousel-inner .item').css('height',minh)
			} else if(winwr > 992) {
				if(winhr < minhlg) {
					$welcome.css('height',minhlg-navhr)
					$dull.css('height',minhlg)
					$('div.wrapper').css('height',minhlg)
					$('.background-carousel .carousel-inner .item').css('height',minhlg)
				} else {
					$welcome.css('height',winhr-navhr)
					$dull.css('height',winhr)
					$('div.wrapper').css('height',winhr)
					$('.background-carousel .carousel-inner .item').css('height',winhr)
				}
			} else if(winwr < 768) {
				$welcome.css('height',maxh-navhr)
				$dull.css('height',maxh)
				$('div.wrapper').css('height',maxh)
				$('.background-carousel .carousel-inner .item').css('height',maxh)
			}
		})

		$(window).scroll(function(){

			var navTop = $nav.offset().top
			var welTop = $welbody.position().top+50

			if( navTop >= welTop ) {
				$nav.addClass('navbar-scroll')
			} else {
				$nav.removeClass('navbar-scroll')
			}
		})
	})
}(jQuery))