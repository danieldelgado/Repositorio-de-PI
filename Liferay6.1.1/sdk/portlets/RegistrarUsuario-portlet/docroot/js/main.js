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

	$("#" + registrar_usuario_portlet_namespace + "btnGuardar").click(
			function(e) {
				registrarPostulanteInscrito();
			});
};

function validarUsuario(str) {
	var urlgetplanajax = $(
			"#" + registrar_usuario_portlet_namespace
					+ "validarUsuarioPostulante").val();

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
				var nombre_usuario = $("#"
						+ registrar_usuario_portlet_namespace
						+ "nombre_usuario");
				nombre_usuario.val(str + (existen + 1));
			}
		}
	});
}

function registrarPostulanteInscrito() {

	var fromregistrarUsuario = $("#" + registrar_usuario_portlet_namespace + "fromregistrarUsuario");	
	fromregistrarUsuario = fromregistrarUsuario.serializeAllArray();
	
	validarFormulario();

//	var registrarUsuario = $("#" + registrar_usuario_portlet_namespace + "registrarUsuario").val();
//
//	$.ajax({
//		type : "POST",
//		dataType : "json",
//		url : registrarUsuario,
//		data : fromregistrarUsuario,
//		success : function(data) {
//			console.log(data);
//		}
//	});
}

function validarFormulario() {

	var usuario = $("#"	+ registrar_usuario_portlet_namespace + "nombre_usuario");
	
	
	var nombre = $("#"	+ registrar_usuario_portlet_namespace + "nombre");
	
	if(!validate_theme_reclutamiento.isnullText($(nombre).val())){
		if(!validate_theme_reclutamiento.validarPatron("val_limite_cadena",$(nombre).val())){
			validate_theme_reclutamiento.componenteError("validatenombre",nombre);
		}		
	}
	
	var apellidos = $("#"	+ registrar_usuario_portlet_namespace + "apellidos");
	var correo = $("#"	+ registrar_usuario_portlet_namespace + "correo");
	var puestoactual = $("#"	+ registrar_usuario_portlet_namespace + "puestoactual");
	var genero = $("#"	+ registrar_usuario_portlet_namespace + "genero");
	var dni = $("#"	+ registrar_usuario_portlet_namespace + "dni");
	var fechanacimiento = $("#"	+ registrar_usuario_portlet_namespace + "fechanacimiento");
	var password = $("#"	+ registrar_usuario_portlet_namespace + "password");
	var password2 = $("#"	+ registrar_usuario_portlet_namespace + "password2");
	
	
	
}


function generarUsuario() {
	var nombre_usuario = $("#" + registrar_usuario_portlet_namespace
			+ "nombre_usuario");
	nombre_usuario.val("");

	var nombre = $("#" + registrar_usuario_portlet_namespace + "nombre").val();
	nombre = nombre.split(" ");

	var apellidos = $("#" + registrar_usuario_portlet_namespace + "apellidos")
			.val();
	apellidos = apellidos.split(" ");

	var usuario = apellidos[0].toLowerCase();

	$.each(nombre, function(key, line) {
		usuario = usuario + (line).substring(0, 1).toLowerCase();
	});

	nombre_usuario.val(usuario);
	validarUsuario(usuario);

};

registrar_usuario_portlet.init = function() {

	registrar_usuario_portlet_namespace = $("#registrar_usuario_portlet").val();
	registrar_usuario_portlet.inicializarComponentes();

};

$(document).on('ready', registrar_usuario_portlet.init());
