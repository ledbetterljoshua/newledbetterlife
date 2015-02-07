

$(function(){
	$( "#closeAlert" ).click(function() {
		$(".alert").slideUp()
	});
});

$(function(){$("input#social_facebook").attr("id", "");$("input#social_twitter").attr("id", "");});


function bannerImg() {
var imageSrc = $("#theHiddenImg img").attr("src")
$("div#banner").attr("style", "background-image: url(\" " + imageSrc + "\");")
}

function postControls() {
	var currnetLocation = location.pathname;
	var next = $("a.download-btn.next").attr("href");
	var first = $("a.download-btn.first").attr("href");
	var last = $("a.download-btn.last").attr("href");
	$("a.download-btn.first").hide();

	if (currnetLocation == last) {
	 $("a.download-btn.next").show();
	 $("a.download-btn.last").hide();
	} else if ( currnetLocation == first) {
	 $("a.download-btn.next").hide();
	 $("a.download-btn.last").show();
	} 
}



// Hide Header on on scroll down

var didScroll;
var lastScrollTop = 0;
var delta = 5;
var navbarHeight = $('.navbar').outerHeight();

$(window).scroll(function(event){
    didScroll = true;
});

setInterval(function() {
    if (didScroll) {
        hasScrolled();
        didScroll = false;
    }
}, 250);

function hasScrolled() {
    var st = $(this).scrollTop();
    
    // Make sure they scroll more than delta
    if(Math.abs(lastScrollTop - st) <= delta)
        return;
    
    // If they scrolled down and are past the navbar, add class .nav-up.
    // This is necessary so you never see what is "behind" the navbar.
    if (st > lastScrollTop && st > navbarHeight){
        // Scroll Down
        $('.navbar').removeClass('nav-down').addClass('nav-up');
    } else {
        // Scroll Up
        if(st + $(window).height() < $(document).height()) {
            $('.navbar').removeClass('nav-up').addClass('nav-down');
        }
    }
    
    lastScrollTop = st;
}



/***************** Nav Transformicon ******************/

/* When user clicks the Icon */
$(function(){
    $(".nav-toggle").click(function() {
        $(this).toggleClass("active");
        $(".overlay").toggleClass("texture-overlay");
        $("ul.ulMenu").toggleClass("showUl");
        $(".right-menu ").toggleClass("displayAll");
        $(".theContainer").toggleClass("MoveOver");
        $("body").toggleClass("overflowNone");
    });

    /* When user clicks a link */
    $(".overlay ul li a").click(function() {
        $(".nav-toggle").toggleClass("active");
        $(".overlay-boxify").toggleClass("open");
    });

    /* When user clicks outside */
    $(".overlay").click(function() {
        $(".nav-toggle").toggleClass("active");
        $(".overlay-boxify").toggleClass("open");
        $(".overlay").toggleClass("texture-overlay");
        $("ul.ulMenu").toggleClass("showUl");
        $(".right-menu ").toggleClass("displayAll");
        $(".theContainer").toggleClass("MoveOver");
        $("body").toggleClass("overflowNone");
    });
});
