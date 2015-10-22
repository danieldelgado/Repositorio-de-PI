package com.rec.registrarusuario.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;
import javax.swing.Spring;

import org.apache.commons.lang.Validate;
import org.springframework.aop.SpringProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.bind.annotation.ActionMapping;
import org.springframework.web.portlet.bind.annotation.RenderMapping;
import org.springframework.web.portlet.bind.annotation.ResourceMapping;

import com.liferay.portal.DuplicateUserEmailAddressException;
import com.liferay.portal.DuplicateUserScreenNameException;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.json.JSONFactoryUtil;
import com.liferay.portal.kernel.json.JSONObject;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.StringPool;
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
import com.rec.registrarusuario.util.ValidateUtil;

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

//	@ActionMapping(value = "registrarUsuario")	
	@ResourceMapping(value = "registrarUsuario")
	@ResponseBody
	protected void registrarUsuario(ResourceRequest request, ResourceResponse response, Model model) throws IOException {
		LOG.debug("registrarUsuario");

		ThemeDisplay themeDisplay = (ThemeDisplay) request.getAttribute(WebKeys.THEME_DISPLAY);

		try {
			ServiceContext serviceContext = ServiceContextFactory.getInstance(request);

			int prefixId = 0;
			int suffixId = 0;
			int birthdayMonth = (new Date()).getMonth();
			int birthdayDay = (new Date()).getDay();
			int birthdayYear = (new Date()).getYear();

			long facebookId = 0;
			String openId = StringPool.BLANK;
			boolean sendEmail = false;

			long creatorUserId = ConstantesUtil.CERO;
			long companyId = themeDisplay.getCompanyId();

			Role rol = RoleLocalServiceUtil.getRole(companyId, ConstantesUtil.DESCRIPCION_ROL_POSTULANTE);

			long groupId = themeDisplay.getLayout().getGroupId();
			long[] groupIds = { groupId };
			long[] organizationIds = null;
			long[] roleIds = { rol.getRoleId() };
			long[] userGroupIds = null;

			Locale locale = themeDisplay.getLocale();
			String strNombre = ParamUtil.getString(request, "nombre");
						
			String strApep = ParamUtil.getString(request, "apellidos");
			boolean autoScreenName = false;

			String strUsuario = ParamUtil.getString(request, "nombre_usuario");

			String strEmail = ParamUtil.getString(request, "correo");
			String puestoactual = ParamUtil.getString(request, "puestoactual");
			String strGenero = ParamUtil.getString(request, "optionsRadios");
			String nroDocumento = ParamUtil.getString(request, "dni");
			String strFechaNacimiento = ParamUtil.getString(request, "fechanacimiento");
			boolean male = (strGenero.trim().equals(ConstantesUtil.GENERO_FEMENINO_LETRA) ? false : true);
			boolean autoPassword = false;
			String strPassword = ParamUtil.getString(request, "password");
			String strPassword2 = ParamUtil.getString(request, "password2");
			Map<String, String> camposExtras = new HashMap<String, String>();
			camposExtras.put(ConstantesUtil.CAMPO_PERSONALIZADO_DNI, nroDocumento);
			
			LOG.debug("locale:" + locale.getDisplayCountry());
			LOG.debug("strNombre:" + strNombre);
			LOG.debug("strApep:" + strApep);
			LOG.debug("strUsuario:" + strUsuario);
			LOG.debug("puestoactual:" + puestoactual);
			LOG.debug("strEmail:" + strEmail);
			LOG.debug("strGenero:" + strGenero);
			LOG.debug("nroDocumento:" + nroDocumento);
			LOG.debug("strFechaNacimiento:" + strFechaNacimiento);
			LOG.debug("male:" + male);
			LOG.debug("strFechaNacimiento:" + strFechaNacimiento);
			LOG.debug("strPassword:" + strPassword);
			LOG.debug("strPassword2:" + strPassword2);
			LOG.debug("camposExtras:" + camposExtras);
			
			Map<String, String> objValidacion = validarRegistroUsuario(strNombre,strApep,strUsuario,strEmail,puestoactual,strGenero,nroDocumento,strFechaNacimiento,strPassword,strPassword2);
			
			if(objValidacion.get("validacionCorrecta").equals("OK")){
				LOG.debug("Campos validos:");
				String[] nombres = strNombre.split(StringPool.SPACE);
				strNombre = nombres[0];
				String strSegundoNombre = ( nombres.length>ConstantesUtil.CERO )? StringPool.BLANK:nombres[1];
				
				User nuevoPostulante = registrarUsuarioService.registrarUsuarioPostulante(creatorUserId, companyId, autoPassword, strPassword, strPassword2, autoScreenName,
						strUsuario, strEmail, facebookId, openId, locale, strNombre, strSegundoNombre, strApep, prefixId, suffixId, male, birthdayMonth, birthdayDay, birthdayYear,
						puestoactual, groupIds, organizationIds, roleIds, userGroupIds, sendEmail, camposExtras, serviceContext);
				
				
			}else{
				LOG.debug("Campos invalidos:");
			}
			
			

		} catch (DuplicateUserEmailAddressException e) {
			LOG.error("DuplicateUserEmailAddressException", e);

		} catch (DuplicateUserDNIException e) {
			LOG.error("DuplicateUserDNIException", e);

		} catch (DuplicateUserScreenNameException e) {
			LOG.error("DuplicateUserScreenNameException", e);

		} catch (PortalException e) {
			LOG.error("PortalException", e);

		} catch (SystemException e) {
			LOG.error("SystemException", e);
		}
		
		JSONObject json = JSONFactoryUtil.createJSONObject();
		json.put("existen", 1);
		json.put("count", 2);
		response.getWriter().write(json.toString());

	}
	
	
	private Map<String, String> validarRegistroUsuario(
			String strNombre, String strApep, String strUsuario, String strEmail, 
			String puestoactual, String strGenero, String nroDocumento, 
			String strFechaNacimiento, String strPassword, String strPassword2) {
		Map<String, String> objValidacion = new LinkedHashMap<String, String>();
		LOG.debug("validarRegistroUsuario :");
		
		if(ValidateUtil.esNombre(strNombre) && ValidateUtil.esValCadena(strNombre)){
			objValidacion.put("validacionCorrecta","OK");
		}
		
		System.out.println(ValidateUtil.esNombre(strNombre));
		
		return objValidacion;
	}

	@ResourceMapping(value = "validarUsuarioPostulante")
	@ResponseBody
	public void validarUsuarioPostulante(ResourceRequest request, ResourceResponse response) throws IOException {
		String usuario_postulante=request.getParameter("usuario_postulante");
		int count = 0;
		boolean existen = false;
		try {
			count = registrarUsuarioService.validarUsuarioNuevoPostulante(usuario_postulante);	
			if( count > ConstantesUtil.CERO  ){
				existen = true;
			}
		} catch (SystemException e) {
			LOG.error("SystemException", e);
		}
		JSONObject json = JSONFactoryUtil.createJSONObject();
		json.put("existen", existen);
		json.put("count", count);
		
		LOG.debug("jsonrespuesta :" + json.toString());
		
		response.getWriter().write(json.toString());
	}

}
