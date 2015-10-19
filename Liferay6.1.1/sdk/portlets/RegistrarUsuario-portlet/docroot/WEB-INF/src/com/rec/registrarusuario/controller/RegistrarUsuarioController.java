package com.rec.registrarusuario.controller;
import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.ActionMapping;
import org.springframework.web.portlet.bind.annotation.RenderMapping;

import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.ParamUtil;

@Controller
@RequestMapping("VIEW")
public class RegistrarUsuarioController {

	private static Log LOG = LogFactoryUtil.getLog(RegistrarUsuarioController.class);
	
	
	@RenderMapping()
	public String get(RenderRequest request, RenderResponse response, Model model) {
		LOG.debug("Incio");
		
		return "view";
	}
	
	@ActionMapping(value = "registrarUsuario")
	protected void registrarUsuario(ActionRequest request,ActionResponse response,Model model){
		LOG.debug("registrarUsuario");
		
		String strNombre = ParamUtil.getString(request, "nombre");
		String strApep = ParamUtil.getString(request, "apellidos");
		String strEmail = ParamUtil.getString(request, "correo");
		String strGenero = ParamUtil.getString(request, "optionsRadios");
		String nroDocumento = ParamUtil.getString(request, "dni");
		String strFechaNacimiento = ParamUtil.getString(request, "fechanacimiento");
		String strPassword = ParamUtil.getString(request, "password");
		

		LOG.debug("strNombre:"+strNombre);
		LOG.debug("strApep:"+strApep);
		LOG.debug("strEmail:"+strEmail);
		LOG.debug("strGenero:"+strGenero);
		LOG.debug("nroDocumento:"+nroDocumento);
		LOG.debug("strFechaNacimiento:"+strFechaNacimiento);
		LOG.debug("strPassword:"+strPassword);
		
		
	}
}
