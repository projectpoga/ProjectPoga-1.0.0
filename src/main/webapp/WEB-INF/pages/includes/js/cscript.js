$(document).ready(function(){
	var slider = $('.cslick').slick({
		autoplay: true,
		autoplaySpeed: 4500,
		dots: true,
		infinite: true,
		speed: 500,
		slidesToShow: 4,
		slidesToScroll: 1,
		swipe: true,
		swipeToSlide: true,
		pauseOnDotsHover: false,
		responsive: [
			{
				breakpoint: 1080,
				settings: {
					slidesToShow: 3,
					slidesToScroll: 2,
					infinite: true,
					dots: true
				}
			},{
				breakpoint: 768,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 2,
					infinite: true,
				}
			},{
				breakpoint: 596,
				settings: {
					slidesToShow: 1,
					slidesToScroll: 1,
					infinite: true,
					dots: false
				}
			}
		]
	})
	
	var slider1 = $('.cslick-1').slick({
		autoplay: true,
		autoplaySpeed: 4500,
		dots: true,
		infinite: true,
		speed: 500,
		slidesToShow: 4,
		slidesToScroll: 1,
		swipe: true,
		swipeToSlide: true,
		pauseOnDotsHover: false,
		responsive: [
			{
				breakpoint: 1080,
				settings: {
					slidesToShow: 3,
					slidesToScroll: 2,
					infinite: true,
					dots: true
				}
			},{
				breakpoint: 768,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 2,
					infinite: true,
				}
			},{
				breakpoint: 596,
				settings: {
					slidesToShow: 1,
					slidesToScroll: 1,
					infinite: true,
					dots: false
				}
			}
		]
	})
	
	var slider2 = $('.cslick-2').slick({
		autoplay: true,
		autoplaySpeed: 4500,
		dots: true,
		infinite: true,
		speed: 500,
		slidesToShow: 4,
		slidesToScroll: 1,
		swipe: true,
		swipeToSlide: true,
		pauseOnDotsHover: false,
		responsive: [
			{
				breakpoint: 1080,
				settings: {
					slidesToShow: 3,
					slidesToScroll: 2,
					infinite: true,
					dots: true
				}
			},{
				breakpoint: 768,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 2,
					infinite: true,
				}
			},{
				breakpoint: 596,
				settings: {
					slidesToShow: 1,
					slidesToScroll: 1,
					infinite: true,
					dots: false
				}
			}
		]
	})

	$('.slick-slider button').each(function(){
		$(this).append('<i class="fa fa-angle-left"></i>')
	})
});