$(document).ready(function() {
	$(".search-toggle").on("click", function() {
		$(".searchbox").fadeToggle();
	});
	onResizeHideElement();
	// mappingMenu1();
	// mappingMenu2();
	// mappingHotLine();
	// mappingSocial();

	swiperInit();
	// mappingSearchBox();
	// mappingSearchBox2();

	mobileHeaderToggle();
	tabActive();
	menuActive();
	backToHome();
	navigationToHome();
	//Scroll to top
	let btnTopScroll = $(".back-to-top");
	btnTopScroll.on("click", function(e) {
		e.preventDefault();
		$("html, body").animate(
			{
				scrollTop: 0
			},
			200
		);
	});
	//Scrool to section
	if ($("body").hasClass("homepage")) {
		let offset = 150;
		let scrollToSection = $(
			'.header-navigation-wrapper ul.navigation-wrapper li a[href*="#"]'
		);
		scrollToSection.on("click", function(e) {
			$("html, body").animate(
				{
					scrollTop: $($(this).attr("href")).offset().top - offset
				},
				600,
				"linear"
			);
		});
	}
	let scrollMobile = $(
		'.mobile-wrapper ul.navigation-wrapper li a[href*="#"]'
	);
	scrollMobile.on("click", function(e) {
		$(".hamburger").removeClass("is-active");
		$(".mobile-wrapper").removeClass("active");
		$("html, body").animate(
			{
				scrollTop: $($(this).attr("href")).offset().top - 70
			},
			600,
			"linear"
		);
	});
	//Library Init

	AOS.init({
		disable: "mobile", // accepts following values: 'phone', 'tablet', 'mobile', boolean, expression or function
		startEvent: "DOMContentLoaded", // name of the event dispatched on the document, that AOS should initialize on
		initClassName: "aos-init", // class applied after initialization
		animatedClassName: "aos-animate", // class applied on animation

		delay: 0, // values from 0 to 3000, with step 50ms
		duration: 400, // values from 0 to 3000, with step 50ms
		easing: "ease", // default easing for AOS animations
		once: true, // whether animation should happen only once - while scrolling down
		mirror: false, // whether elements should animate out while scrolling past them
		anchorPlacement: "top-bottom" // defines which position of the element regarding to window should trigger the animation
	});
	mediumZoom(document.querySelectorAll(".medium-zoom"), {});

	$(".lightgallery").lightGallery();
	// particleJS();
});
$(document).on("scroll", onScrollSection);
$(window).resize(function() {
	onResizeHideElement();
});

// On resize hide element
function onResizeHideElement() {
	if ($(window).width() < 1025) {
		$(".navbrand").fadeIn(function() {
			$(".navbrand").css({
				display: "flex"
			});
		});
		$(".language-wrapper").fadeIn(function() {
			$(".language-wrapper").css({
				display: "flex"
			});
		});
		$(".mobile-toggle").fadeIn(function() {
			$(".mobile-toggle").css({
				display: "flex"
			});
		});
		$(".searchbox").fadeIn(function() {
			$(".mobile-toggle").css({
				display: "flex"
			});
		});
	} else if ($(window).width() > 1024) {
		$(".mobile-toggle").fadeIn(function() {
			$(".mobile-toggle").css({
				display: "none"
			});
		});
	}
}
//Scroll active

function onScrollSection(event) {
	var scrollPos = $(document).scrollTop() + 250;
	$(".header-navigation-wrapper ul.navigation-wrapper a").each(function() {
		var currLink = $(this);
		var refElement = $(currLink.attr("href"));
		if (
			refElement.position().top <= scrollPos &&
			refElement.position().top + refElement.height() > scrollPos
		) {
			$(
				".header-navigation-wrapper ul.navigation-wrapper li"
			).removeClass("active");
			currLink.parent().addClass("active");
		} else {
			currLink.parent().removeClass("active");
		}
	});
}
//Back to Home
function backToHome() {
	$(".header-home-icon").on("click", function() {
		let home = window.location.origin;
		window.location.replace(home);
	});
	$(".navbrand").on("click", function() {
		let home = window.location.origin;
		window.location.replace(home);
	});
}

function navigationToHome() {
	if (!$("body").hasClass("homepage")) {
		$(".header-navigation-wrapper ul.navigation-wrapper li a").click(
			function() {
				let home = window.location.origin;
				let href = $(this).attr("href");
				window.location.replace(home + href);
			}
		);
	}
}

function navigationToHomeMobile() {
	if (!$("body").hasClass("homepage")) {
		$(".mobile-wrapper ul.navigation-wrapper li a").click(function() {
			let home = window.location.origin;
			let href = $(this).attr("href");
			window.location.replace(home + href);
		});
	}
}

function menuActive() {
	$("ul.navigation-wrapper li a").on("click", function() {
		$(this)
			.parents("ul.navigation-wrapper")
			.find("li")
			.removeClass("active");
		$(".header-navigation-wrapper ul li").removeClass("active");
		$(this)
			.parents("li")
			.addClass("active");
	});
}

function tabActive() {
	$(".facility-tab-nav ul li a").on("click", function() {
		$(this)
			.parents(".facility-tab-nav ul")
			.find("li")
			.removeClass("active");
		$(this)
			.parents("li")
			.addClass("active");

		var display = $(this).attr("data-type");
		$(".facility-tab-item").removeClass("active");
		$("#" + display).addClass("active");
	});
}
//Form
function formToggle() {
	$(".fixed-form").toggleClass("active");
	console.log(123123);
}

function removeActiveForm() {
	$(".fixed-form").removeClass("active");
}

function mappingMenu1() {
	return new MappingListener({
		selector: ".Module-166",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".header-home-icon",
		desktopMethod: "insertAfter",
		breakpoint: 1025
	}).watch();
}

function mappingMenu2() {
	return new MappingListener({
		selector: ".Module-167",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".navbrand",
		desktopMethod: "insertAfter",
		breakpoint: 1025
	}).watch();
}

function mappingSearchBox() {
	return new MappingListener({
		selector: ".search-toggle",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: "ul.navigation-wrapper.navigation-header-2",
		desktopMethod: "insertAfter",
		breakpoint: 1025
	}).watch();
}
function mappingSearchBox2() {
	return new MappingListener({
		selector: ".searchbox",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".search-toggle",
		desktopMethod: "insertAfter",
		breakpoint: 1025
	}).watch();
}
function mappingHotLine() {
	return new MappingListener({
		selector: ".hot-line-wrapper",
		mobileWrapper: ".navbrand",
		mobileMethod: "insertAfter",
		desktopWrapper: ".header-top",
		desktopMethod: "appendTo",
		breakpoint: 1025
	}).watch();
}
function mappingSocial() {
	return new MappingListener({
		selector: ".social-network",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".hot-line-wrapper",
		desktopMethod: "insertBefore",
		breakpoint: 1025
	}).watch();
}

function mobileHeaderToggle() {
	let $hamburger = $(".hamburger");
	let $mobileToggle = $(".mobile-wrapper");
	let $mobileHam = $(".mobile-toggle");

	$hamburger.on("click", function(e) {
		$hamburger.toggleClass("is-active");
		$mobileToggle.toggleClass("active");
		$mobileHam.toggleClass("active");
	});
}

$(document).on("click", ".wrapper video", function(e) {
	var video = $(this).get(0);
	if (video.paused === false) {
		video.pause();
		$(this)
			.parent()
			.find(".play__icon")
			.fadeIn();
		$(this)
			.parents(".wrapper")
			.find(".swiper-caption")
			.fadeIn();
	} else {
		video.play();
		$(this)
			.parent()
			.find(".play__icon")
			.fadeOut();
		$(this)
			.parents(".wrapper")
			.find(".swiper-caption")
			.fadeOut();
	}
	return false;
});

function swiperInit() {
	var mySwiper = new Swiper(".ss-maria-structure .swiper-container", {
		loop: true,
		speed: 750,
		spaceBetween: 0,
		autoplay: {
			delay: 2500
		},
		watchSlidesVisibility: true,
		navigation: {
			nextEl: ".nav-next",
			prevEl: ".nav-prev"
		},
		breakpointsInverse: true,
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 1,
				centeredSlides: true
			},
			768: {
				slidesPerView: 3,
				centeredSlides: true
			},
			// when window width is >= 480px
			1200: {
				slidesPerView: 5,
				centeredSlides: true,
				autoplay: false
			},
			// when window width is >= 640px
			1600: {
				slidesPerView: 5,
				centeredSlides: true,
				autoplay: false
			}
		}
	});
}
var mySwiper = new Swiper(".home-swiper-banner .swiper-container", {
	loop: true,
	slidesPerView: 1,
	speed: 750,
	autoplay: {
		delay: 5000
	},
	effect: "fade",
	fadeEffect: {
		crossFade: true
	}
});
