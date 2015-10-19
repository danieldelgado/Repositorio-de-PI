$(document).ready(function() {
	$("#loginModal").hide();
	init();
});

function init() {
	
	addlinksdockbar();
	
	$("#loginUser,#loginUser2").click(function(e) {
		
		$("#loginModal").show();
		
	});
	
	$(".close").click(function(e) {
		$("#loginModal").hide();
	});
	
	var action, porletId;
	porletId = locationVar("p_p_id");
	action = locationVar("_"+porletId+"_"+"struts_action");
	
	if(porletId == "58" && action == "%2Flogin%2Flogin"){
		$("#loginUser,#loginUser2").trigger('click');
	}
	
	
	
}



function addlinksdockbar(){	
	var p_p_id_ListaSitios_WAR_ListaSitiosportlet_ = $("#p_p_id_ListaSitios_WAR_ListaSitiosportlet_");
	var portlet_body = $(p_p_id_ListaSitios_WAR_ListaSitiosportlet_).children(".portlet-body");
	portlet_body = $(portlet_body).children();
	portlet_body = $(portlet_body).children();	
	var listaopciones = portlet_body.children("ul");
	$("#navbar-main2 ul ").append($(listaopciones).html());	
} 


function locationVar(vr) {
	var src, vrs, paramVal;
	src = String(window.location.href);
	if (src.indexOf('?') != '-1') {
		src = src.split('?')[1];
		vrs = src.split('&');
		for ( var x = 0, c = vrs.length; x < c; x++) {
			if (vrs[x].indexOf(vr) != -1) {
				paramVal = vrs[x].split('=')[1];
				if (c - 1 == x && paramVal.indexOf('#') != '-1') {
					paramVal = paramVal.substring(0, paramVal.length - 1);
				}

				return decodeURI(paramVal);
				break;
			}
		}
		return false;
	}
}
