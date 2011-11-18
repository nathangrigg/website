function menutoggle() {
    $('.old-post').slideToggle();
    $('#expand-switch').toggle();
    $('#collapse-switch').toggle();
}
function collapsePostIndex() {
	$("#postindex li:nth-child(-n+5)").removeClass("old-post");
	if ( $('#postindex li').length > 5 ) {
        $('#postindex').append('<li><a href="javascript:menutoggle();" id="expand-switch">↓Show all↓</a><a href="javascript:menutoggle();" id="collapse-switch">↑Show recent↑</a></li>')
    }
}
$(document).ready( function () {
	collapsePostIndex();
	setupProxyLinks();
});

function moreMe() {
	$('#me').slideToggle();
	$('#more-about-me').slideToggle();
}
