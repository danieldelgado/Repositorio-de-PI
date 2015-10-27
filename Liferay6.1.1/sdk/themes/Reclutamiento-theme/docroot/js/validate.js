var validate_theme_reclutamiento = {};
var patronesportal = {};

function inicializarPatrones(list) {
	patronesportal = list;
}

validate_theme_reclutamiento.obtenerParentComponenteClass=function (clase,objetohijo){	
	var obj = $(objetohijo).closest("."+clase);	
	return obj;	
};

validate_theme_reclutamiento.validarPatron = function(nombrepatron, valor) {	
	var re = new RegExp(patronesportal[nombrepatron]);	
	return re.test(valor);
};

validate_theme_reclutamiento.isnullText = function(str) {	
	if (str == null && str == undefined && str.length <= 0 ) { 
		return true;
	}	
	return false;
};

validate_theme_reclutamiento.validarCampo = function(inputComponent,campo,validacion,componenteError) {
	if(validate_theme_reclutamiento.isnullText($(inputComponent).val())){
		validate_theme_reclutamiento.componenteSuccess(componenteError,componenteError,false);
	}else{
		if(validate_theme_reclutamiento.validarPatron(validacion,$(inputComponent).val())){
			validate_theme_reclutamiento.componenteSuccess(inputComponent,componenteError,true);
		}else{
			validate_theme_reclutamiento.componenteSuccess(inputComponent,componenteError,false);
		}
	}	
};

validate_theme_reclutamiento.componenteSuccess = function(inputComponent,validateComponent,success) {
	var objcomponentformcontrol = validate_theme_reclutamiento.obtenerParentComponenteClass("form-group",inputComponent);
	$("."+validateComponent).removeClass("hide");
	if(success){		
		$(objcomponentformcontrol).removeClass("has-error");
		$(objcomponentformcontrol).addClass("has-success");
		$("."+validateComponent).hide();
	}else{
		$(objcomponentformcontrol).removeClass("has-success");
		$(objcomponentformcontrol).addClass("has-error");	
		$("."+validateComponent).show();
	}
};
