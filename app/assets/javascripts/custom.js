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