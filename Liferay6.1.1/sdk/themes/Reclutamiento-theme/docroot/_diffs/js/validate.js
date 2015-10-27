var validate_theme_reclutamiento = {};
var patronesportal = {};

function inicializarPatrones(list) {
	patronesportal = list;
}

validate_theme_reclutamiento.validarPatron = function(nombrepatron, valor) {
	var re = new RegExp(patronesportal[nombrepatron]);
	return re.test(valor);
};

validate_theme_reclutamiento.isnullText = function(str) {	
	if( $( str ).length > 0 ){
		return true;
	}	
	return false;
};


validate_theme_reclutamiento.componenteError = function(validateComponent,objcomponent) {
	console.log("componenteError");
	$("."+validateComponent).removeClass("hide");
	objcomponent = 	validate_theme_reclutamiento.obtenerParentComponenteClass("form-group",objcomponent);
	$(objcomponent).addClass("has-error");	
};

validate_theme_reclutamiento.obtenerParentComponenteClass=function (clase,objetohijo){	
	var obj = $(objetohijo).closest(".form-group");	
	return obj;	
};

