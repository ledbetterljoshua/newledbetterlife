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
	var last = $("a.download-btn.last").attr("href");
	var first = $("a.download-btn.first").attr("href");
	$("a.download-btn.last").hide();

	if (currnetLocation == last) {
	 $("a.download-btn.next").hide();
	 $("a.download-btn.first").show();
	} else if ( currnetLocation == first) {
	 $("a.download-btn.next").show();
	 $("a.download-btn.first").hide();
	}
}

var lastScrollTop = 0;
$(window).scroll(function(event){
   var st = $(this).scrollTop();
   if (st > lastScrollTop){
       $("nav.navbar.navbar-default").attr("style", "margin-top:-74px;");
   } else {
      $("nav.navbar.navbar-default").attr("style", "margin-top:0px;");
   }
   lastScrollTop = st;
      if (document.body.scrollTop === 0) {
     $("nav.navbar.navbar-default").attr("style", "margin-top:0px;transition:all 0 ease-in");
   }
});

