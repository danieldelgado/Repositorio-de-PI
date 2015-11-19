var reclutamiento_theme;
reclutamiento_theme = {};

reclutamiento_theme.inicializarComponentes = function() {

	$("#loginUser,#loginUser2").click(function(e) {
		$("#loginModal").modal('show');
	});
	var action, porletId;
	porletId = locationVar("p_p_id");
	action = locationVar("_" + porletId + "_" + "struts_action");

	if (porletId == "58" && action == "%2Flogin%2Flogin") {
		$("#loginModal").modal('show');
	}

};

reclutamiento_theme.addlinksdockbar = function() {
	var p_p_id_ListaSitios_WAR_ListaSitiosportlet_ = $("#p_p_id_ListaSitios_WAR_ListaSitiosportlet_");
	var portlet_body = $(p_p_id_ListaSitios_WAR_ListaSitiosportlet_).children(
			".portlet-body");
	portlet_body = $(portlet_body).children();
	portlet_body = $(portlet_body).children();
	var listaopciones = portlet_body.children("ul");
	$("#navbar-main2 ul ").append($(listaopciones).html());
};

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

$.fn.serializeAllArray = function() {
	var obj = {};
	$('input', this).each(function() {
		obj[this.name] = $(this).val();
	});
	return $.param(obj);
};

reclutamiento_theme.mensajesgeneralSimple = function(titulo,mensajesHtml,eventoAlcerrar) {
	reclutamiento_theme.mensajesgeneral(titulo,mensajesHtml,null,null,eventoAlcerrar);
};

reclutamiento_theme.mensajesgeneral = function(titulo,mensajesHtml,clases,role,eventoAlcerrar) {
	var mensajesgeneral = $("#mensajesgeneral");
	$('#mensajesgeneral').find(".titulo").html(titulo);
	$('#mensajesgeneral').find(".contentido").html(mensajesHtml);	
	if(clases != null){
		$('#mensajesgeneral').find(".contentido").attr("role",role);	
	}
	if(role != null){	
		$('#mensajesgeneral').find(".contentido").attr("class","contentido "+clases);
	}	
	console.log(eventoAlcerrar);
	if(eventoAlcerrar != null){

		$(mensajesgeneral).on('hidden.bs.modal', function () {
			eventoAlcerrar();
		});
	}
	
	$(mensajesgeneral).modal('show');
};

reclutamiento_theme.cargandoDialog = function(porcentaje){
	var cargandoDialog = $("#pleaseWaitDialog");
	$(cargandoDialog).modal('show');
};

reclutamiento_theme.cargandoDialogcerrar = function(porcentaje){
	var cargandoDialog = $("#pleaseWaitDialog");
	$(cargandoDialog).modal('hide');
};

reclutamiento_theme.init = function() {
//	$("#loginModal").hide();
	reclutamiento_theme.inicializarComponentes();
	reclutamiento_theme.addlinksdockbar();
};

$(document).on('ready', reclutamiento_theme.init());
