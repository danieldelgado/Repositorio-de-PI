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
	var valid = false;
	if(validate_theme_reclutamiento.isnullText($(inputComponent).val())){
		validate_theme_reclutamiento.componenteSuccess(componenteError,componenteError,valid);
	}else{
		if(validate_theme_reclutamiento.validarPatron(validacion,$(inputComponent).val())){
			valid = true;
			validate_theme_reclutamiento.componenteSuccess(inputComponent,componenteError,valid);
		}else{
			validate_theme_reclutamiento.componenteSuccess(inputComponent,componenteError,valid);
		}
	}	
	return valid;
};

validate_theme_reclutamiento.validarCampoServ = function(campo,componenteError,msgServ) {	
	var valid = false;
	labelerror = validate_theme_reclutamiento.componenteSuccess(null,componenteError,valid,msgServ);	
	return valid;
};

validate_theme_reclutamiento.componenteSuccess = function(inputComponent,idcomponentLabel,success,msgServ) {
	var objcomponentformcontrol = validate_theme_reclutamiento.obtenerParentComponenteClass("form-group",idcomponentLabel);	
	var labelerror = "";
	$(idcomponentLabel).removeClass("hide");
	if(success){		
		$(objcomponentformcontrol).removeClass("has-error");
		$(objcomponentformcontrol).addClass("has-success");
		$(idcomponentLabel).hide();
	}else{
		$(objcomponentformcontrol).removeClass("has-success");
		$(objcomponentformcontrol).addClass("has-error");	
		$(idcomponentLabel).show();
	}
	return labelerror;
};
