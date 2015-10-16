$(document).ready(function() {
	init();
});

function init() {
	var body = $("body");
	var bodyclass = body.attr("class") + "";
	if (bodyclass.indexOf("cbodyalt") > -1) {
		var parentDock = $(".dockcustomBoost").parent().parent();
		parentDock.addClass("navbar-fixed-top");
	}
}
