
var slider_hitss_portlet_namespace;
var slider_hitss_portlet;
slider_hitss_portlet = {};


slider_hitss_portlet.init = function() {

	$('.carousel .slideHitss').carousel();
	slider_hitss_portlet_namespace = $("#slider_hitss_portlet_namespace").val();

};

$(document).on('ready', slider_hitss_portlet.init());

