var registrar_usuario_portlet;
var registrar_usuario_portlet_namespace;
registrar_usuario_portlet = {};

registrar_usuario_portlet.inicializarComponentes = function() {

	var fechadia = $(".fechadia");
	var fechames = $(".fechames");
	var fechaanno = $(".fechaanno");

	selectItem(fechadia);
	selectItem(fechames);
	selectItem(fechaanno);

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
	var fromregistrarUsuario = $("#" + registrar_usuario_portlet_namespace+ "fromregistrarUsuario");
	fromregistrarUsuario = fromregistrarUsuario.serializeAllArray();	
	console.log(fromregistrarUsuario);
	
	var registrarUsuario = $("#" + registrar_usuario_portlet_namespace + "registrarUsuario").val();
	console.log(registrarUsuario);

//	$('input[disabled]').each( function() {
//		fromregistrarUsuario = fromregistrarUsuario + '&' + $(this).attr('name') + '=' + $(this).val();
//    });

	
	$.ajax({
		type : "POST",
		dataType : "json",
		url : registrarUsuario,
		data : fromregistrarUsuario ,
		success : function(data) {
			console.log(data);
		}
	});
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

function selectItem(selectitem) {
	var label = $(selectitem).children("a");
	var item = $(selectitem).find("li");
	$(item).each(function(idx, val) {
		var itema = $(this).children("a");
		$(itema).click(function(e) {
			var valueItem = $(itema).html();
			$(label).html(valueItem + "<span class='caret'></span>");
		});
	});
}

registrar_usuario_portlet.init = function() {

	registrar_usuario_portlet_namespace = $("#registrar_usuario_portlet").val();
	registrar_usuario_portlet.inicializarComponentes();

};

$(document).on('ready', registrar_usuario_portlet.init());
