$(document).ready(function() {
	init();
	funcionesBotones();
//	opencloselogin(true);
});

function init() {
	var body = $("body");
	var bodyclass = body.attr("class") + "";
	if (bodyclass.indexOf("cbodyalt") > -1) {
		var parentDock = $(".dockcustomBoost").parent().parent();
		parentDock.addClass("navbar-fixed-top");
	}
}

function funcionesBotones(){
	var btnCloselogin = $("button.closelogin");
	$(btnCloselogin).click(function() {
		opencloselogin(true);
	});
	
	var btnLogin =  $("button.btnLogin");
	$(btnLogin).click(function() {
		opencloselogin(false);
	});
} 


function opencloselogin(b){
	if(b){
		$( "#loginModal" ).hide(1000);
		$( "#loginModal" ).removeClass("show");
		$( "#loginModal" ).addClass("hide");
		$( ".modal-dialog" ).hide(1000);		
	}else{
		$( "#loginModal" ).show(1000);
		$( "#loginModal" ).removeClass("hide");
		$( "#loginModal" ).addClass("show");
		$( ".modal-dialog" ).show(1000);	
	}
} 

