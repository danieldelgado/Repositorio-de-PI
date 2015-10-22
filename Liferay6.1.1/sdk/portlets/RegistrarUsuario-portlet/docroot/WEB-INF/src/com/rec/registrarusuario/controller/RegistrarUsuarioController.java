package com.rec.registrarusuario.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

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
import com.liferay.portal.model.Role;
import com.liferay.portal.model.User;
import com.liferay.portal.service.RoleLocalServiceUtil;
import com.liferay.portal.service.ServiceContext;
import com.liferay.portal.service.ServiceContextFactory;
import com.liferay.portal.theme.ThemeDisplay;
import com.rec.registrarusuario.service.RegistrarUsuarioService;
import com.rec.registrarusuario.util.ConstantesUtil;
import com.rec.registrarusuario.util.DuplicateUserDNIException;

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
			
		try {
			ServiceContext serviceContext = ServiceContextFactory.getInstance(request);
			
			long creatorUserId = ConstantesUtil.CERO;
			long companyId = themeDisplay.getCompanyId();

			
			long groupId = themeDisplay.getLayout().getGroupId();
			long[] groupIds =  {groupId};
			long[] organizationIds = null;
			long[] roleIds = null;
			long[] userGroupIds = null;
			
			int prefixId = 0;
			int suffixId = 0;

			Locale locale = themeDisplay.getLocale();
			String strNombre = ParamUtil.getString(request, "nombre");
			String strApep = ParamUtil.getString(request, "apellidos");
			String strEmail = ParamUtil.getString(request, "correo");
			String strGenero = ParamUtil.getString(request, "optionsRadios");
			String nroDocumento = ParamUtil.getString(request, "dni");
			String strFechaNacimiento = ParamUtil.getString(request, "fechanacimiento");
			boolean male = (strGenero.trim().equals(ConstantesUtil.GENERO_FEMENINO_LETRA) ? false : true);
			String strPassword = ParamUtil.getString(request, "password");
			
			int birthdayMonth = (new Date()).getMonth();
			int birthdayDay = (new Date()).getDay();
			int birthdayYear = (new Date()).getYear();
			String nombre_usuario = strNombre + strApep;
			long facebookId = 0;
			String openId = "";			
			boolean autoPassword = false;			
			boolean autoScreenName = false;
			String jobTitle = "Postulante";
			boolean sendEmail = false;
			
			Map<String, String> camposExtras = new HashMap<String, String>();
			camposExtras.put(ConstantesUtil.CAMPO_PERSONALIZADO_DNI, nroDocumento);
			

			LOG.debug("strNombre:" + strNombre);
			LOG.debug("strApep:" + strApep);
			LOG.debug("strEmail:" + strEmail);
			LOG.debug("strGenero:" + strGenero);
			LOG.debug("nroDocumento:" + nroDocumento);
			LOG.debug("strFechaNacimiento:" + strFechaNacimiento);
			LOG.debug("strPassword:" + strPassword);
					
			User nuevoPostulante = registrarUsuarioService.registrarUsuarioPostulante(creatorUserId, companyId, autoPassword , strPassword, strPassword, autoScreenName, 
					nombre_usuario, strEmail, facebookId, openId, locale, strNombre,  " " , strApep, prefixId, suffixId, 
					male, birthdayMonth, birthdayDay, birthdayYear, jobTitle, groupIds, organizationIds, roleIds, userGroupIds, 
					sendEmail, camposExtras, serviceContext);

		} catch (DuplicateUserDNIException e) {
			LOG.error("Duplicado de DNI",e);
		} catch (PortalException e) {
			
		} catch (SystemException e) {
			
		}

	}
}
