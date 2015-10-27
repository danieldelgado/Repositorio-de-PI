var registrar_usuario_portlet;
var registrar_usuario_portlet_namespace;
registrar_usuario_portlet = {};

registrar_usuario_portlet.inicializarComponentes = function() {

	$("#" + registrar_usuario_portlet_namespace + "fechanacimiento")
			.combodate();
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

	var fromregistrarUsuario = $("#" + registrar_usuario_portlet_namespace
			+ "fromregistrarUsuario");
	fromregistrarUsuario = fromregistrarUsuario.serializeAllArray();

	validarFormulario();

	// var registrarUsuario = $("#" + registrar_usuario_portlet_namespace +
	// "registrarUsuario").val();
	//
	// $.ajax({
	// type : "POST",
	// dataType : "json",
	// url : registrarUsuario,
	// data : fromregistrarUsuario,
	// success : function(data) {
	// console.log(data);
	// }
	// });
}

function validarFormulario() {

//	var usuario = $("#" + registrar_usuario_portlet_namespace	+ "nombre_usuario");

	var nombre = $("#" + registrar_usuario_portlet_namespace + "nombre");
	validate_theme_reclutamiento.validarCampo(nombre, "nombre",	"val_limite_cadena", "validatenombre");

	var apellidos = $("#" + registrar_usuario_portlet_namespace + "apellidos");
	validate_theme_reclutamiento.validarCampo(apellidos, "apellidos",	"val_limite_cadena", "validateapellidos");

	var correo = $("#" + registrar_usuario_portlet_namespace + "correo");
	validate_theme_reclutamiento.validarCampo(correo, "correo", "val_email","validatecorreo");

	var puestoactual = $("#" + registrar_usuario_portlet_namespace	+ "puestoactual");
	validate_theme_reclutamiento.validarCampo(puestoactual, "puestoactual", "val_limite_cadena",	"validatepuesto");
	
//	var genero = $("#" + registrar_usuario_portlet_namespace + "genero");
	
	var dni = $("#" + registrar_usuario_portlet_namespace + "dni");
	validate_theme_reclutamiento.validarCampo(dni, "dni", "val_limite_cadena",	"validatedni");
	
	var fechanacimiento = $("#" + registrar_usuario_portlet_namespace	+ "fechanacimiento");
	validate_theme_reclutamiento.validarCampo(fechanacimiento, "fechanacimiento", "val_limite_cadena",	"validatefechanacimiento");
	
	var password = $("#" + registrar_usuario_portlet_namespace + "password");
	validate_theme_reclutamiento.validarCampo(password, "password", "val_limite_cadena",	"validatepassword");
	
	var password2 = $("#" + registrar_usuario_portlet_namespace + "password2");
	validate_theme_reclutamiento.validarCampo(password2, "password2", "val_limite_cadena",	"validatepassword2");

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
