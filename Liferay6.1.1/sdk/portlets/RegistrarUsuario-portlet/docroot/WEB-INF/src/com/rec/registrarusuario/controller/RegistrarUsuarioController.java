package com.rec.registrarusuario.controller;

import java.util.Date;
import java.util.Locale;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.ActionMapping;
import org.springframework.web.portlet.bind.annotation.RenderMapping;

import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.WebKeys;
import com.liferay.portal.service.ServiceContext;
import com.liferay.portal.service.ServiceContextFactory;
import com.liferay.portal.theme.ThemeDisplay;
import com.rec.registrarusuario.service.RegistrarUsuarioService;

@Controller
@RequestMapping("VIEW")
public class RegistrarUsuarioController {

	private static Log LOG = LogFactoryUtil.getLog(RegistrarUsuarioController.class);

	@Autowired
	private RegistrarUsuarioService registrarUsuarioService;

	@RenderMapping()
	public String get(RenderRequest request, RenderResponse response, Model model) {
		LOG.debug("Incio");

		return "view";
	}

	@ActionMapping(value = "registrarUsuario")
	protected void registrarUsuario(ActionRequest request, ActionResponse response2, Model model) {
		LOG.debug("registrarUsuario");

		ThemeDisplay themeDisplay = (ThemeDisplay) request.getAttribute(WebKeys.THEME_DISPLAY);
		long companyId = themeDisplay.getCompanyId();
		long groupId = themeDisplay.getLayout().getGroupId();
		Locale locale = themeDisplay.getLocale();
	

		int prefixId = 0;
		int suffixId = 0;
		
		String strNombre = ParamUtil.getString(request, "nombre");
		String strApep = ParamUtil.getString(request, "apellidos");
		String strEmail = ParamUtil.getString(request, "correo");
		String strGenero = ParamUtil.getString(request, "optionsRadios");
		String nroDocumento = ParamUtil.getString(request, "dni");
		String strFechaNacimiento = ParamUtil.getString(request, "fechanacimiento");
		String strPassword = ParamUtil.getString(request, "password");
		

		
		
		
		LOG.debug("strNombre:" + strNombre);
		LOG.debug("strApep:" + strApep);
		LOG.debug("strEmail:" + strEmail);
		LOG.debug("strGenero:" + strGenero);
		LOG.debug("nroDocumento:" + nroDocumento);
		LOG.debug("strFechaNacimiento:" + strFechaNacimiento);
		LOG.debug("strPassword:" + strPassword);
		
		try {
			ServiceContext serviceContext = ServiceContextFactory.getInstance(request);
			registrarUsuarioService.registrarUsuarioPostulante(companyId, groupId, prefixId, suffixId, strNombre, strApep, strEmail, strGenero, nroDocumento, new Date(), strPassword, locale, serviceContext);

		} catch (SystemException e) {
			LOG.error("Error al registrar al nuevo usuario ", e);
		} catch (PortalException e) {
			LOG.error("Error del contexto del portlet ", e);
		}

	}
}
