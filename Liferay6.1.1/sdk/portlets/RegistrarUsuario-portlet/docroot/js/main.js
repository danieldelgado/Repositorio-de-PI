var registrar_usuario_portlet;
var registrar_usuario_portlet_namespace;
registrar_usuario_portlet = {};

registrar_usuario_portlet.inicializarComponentes = function() {

	$("#" + registrar_usuario_portlet_namespace + "fechanacimiento").combodate();
	$(".combodate").addClass(" btn-group btn-group-justified ");
	$(".combodate select").addClass("btn btn-default");

	var nombre = $("#" + registrar_usuario_portlet_namespace + "nombre");

	$(nombre).keyup(function(e) {
		generarUsuario();
	});

	var apellidos = $("#" + registrar_usuario_portlet_namespace + "apellidos");
	$(apellidos).keyup(function(e) {
		generarUsuario();
	});

	$("#" + registrar_usuario_portlet_namespace + "btnGuardar").click(function(e) {
				registrarPostulanteInscrito();
			});
};

function generarUsuario() {
	var nombre_usuario = $("#" + registrar_usuario_portlet_namespace+ "nombre_usuario");
	nombre_usuario.val("");

	var nombre = $("#" + registrar_usuario_portlet_namespace + "nombre").val();
	nombre = nombre.split(" ");

	var apellidos = $("#" + registrar_usuario_portlet_namespace + "apellidos")	.val();
	apellidos = apellidos.split(" ");

	var usuario = apellidos[0].toLowerCase();

	$.each(nombre, function(key, line) {
		usuario = usuario + (line).substring(0, 1).toLowerCase();
	});

	nombre_usuario.val(usuario);
	validarUsuario(usuario);

}

function validarUsuario(str) {
	var urlgetplanajax = $("#" + registrar_usuario_portlet_namespace+ "validarUsuarioPostulante").val();

	$.ajax({
		type : "GET",
		dataType : "json",
		url : urlgetplanajax,
		data : {
			usuario_postulante : str
		},
		success : function(data) {
			var existen = data['existen'];
			if (existen == true) {
				var nombre_usuario = $("#"		+ registrar_usuario_portlet_namespace		+ "nombre_usuario");
				nombre_usuario.val(str + (data['count'] + 1));
			}
		}
	});
}

function registrarPostulanteInscrito() {
	reclutamiento_theme.cargandoDialog(10);
	var fromregistrarUsuario = $("#" + registrar_usuario_portlet_namespace	+ "fromregistrarUsuario");
	fromregistrarUsuario = fromregistrarUsuario.serializeAllArray();
	if(validarFormulario()==0){
		var registrarUsuario = $("#" + registrar_usuario_portlet_namespace + "registrarUsuario").val();
		$.ajax({
			type : "POST",
			dataType : "json",
			url : registrarUsuario,
			data : fromregistrarUsuario,
			success : function(data) {
				if (data != null) {
					var grabousuario = (data["correcto"]== undefined);
					if (grabousuario) {
						var dat = data["respuestas"];
						$(dat).each(function(item) {
								validate_theme_reclutamiento.validarCampoServ(this["campoValidate"],"#" + registrar_usuario_portlet_namespace+ "_msg_e_"+ this["campoValidate"],this["mensajeSimple"]);
						});
					}else{
						var nuevoPostulante = data["nuevoPostulante"];
						
						reclutamiento_theme.cargandoDialogcerrar(10);
						
						reclutamiento_theme.mensajesgeneralSimple("Nuevo Postulante Registrado","Bienvenido "+nuevoPostulante,function(){
							window.location.href="/";
						});
						
					}
				}
				
			}
		});
	}	
}

function validarFormulario() {	
	var count = 0;
	var nombre = $("#" + registrar_usuario_portlet_namespace + "nombre");
	if(!validate_theme_reclutamiento.validarCampo(nombre, "nombre",	"val_limite_cadena", "#" + registrar_usuario_portlet_namespace	+ "_msg_e_nombre")){
		count ++;
	}	
	var apellidos = $("#" + registrar_usuario_portlet_namespace + "apellidos");	
	if(!validate_theme_reclutamiento.validarCampo(apellidos, "apellidos","val_limite_cadena", "#" + registrar_usuario_portlet_namespace	+ "_msg_e_apellidos")){
		count ++;
	}
	var correo = $("#" + registrar_usuario_portlet_namespace + "correo");
	if(!validate_theme_reclutamiento.validarCampo(correo, "correo", "val_email","#" + registrar_usuario_portlet_namespace + "_msg_e_correo")){
		count ++;
	}
	var puestoactual = $("#" + registrar_usuario_portlet_namespace + "puestoactual");
	if(!validate_theme_reclutamiento.validarCampo(puestoactual, "puestoactual",	"val_limite_cadena", "#" + registrar_usuario_portlet_namespace+ "_msg_e_puestoactual")){
		count ++;
	}
	var dni = $("#" + registrar_usuario_portlet_namespace + "dni");
	if(!validate_theme_reclutamiento.validarCampo(dni, "dni", "val_limite_cadena",	"#" + registrar_usuario_portlet_namespace + "_msg_e_dni")){
		count ++;
	}
	var fechanacimiento = $("#" + registrar_usuario_portlet_namespace+ "fechanacimiento");
	if(!validate_theme_reclutamiento.validarCampo(fechanacimiento,	"fechanacimiento", "#" + registrar_usuario_portlet_namespace+ "_msg_e_fechanacimiento")){
		count ++;
	}
	var password = $("#" + registrar_usuario_portlet_namespace + "password");
	if(!validate_theme_reclutamiento.validarCampo(password, "password",	"val_limite_cadena", "#" + registrar_usuario_portlet_namespace+ "_msg_e_password")){
		count ++;
	}
	var password2 = $("#" + registrar_usuario_portlet_namespace + "password2");
	if(!validate_theme_reclutamiento.validarCampo(password2, "password2","val_limite_cadena", "#" + registrar_usuario_portlet_namespace+ "_msg_e_password2")){
		count ++;
	}
	return count;
}



registrar_usuario_portlet.init = function() {

	registrar_usuario_portlet_namespace = $("#registrar_usuario_portlet").val();
	registrar_usuario_portlet.inicializarComponentes();

};

$(document).on('ready', registrar_usuario_portlet.init());
