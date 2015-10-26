package com.rec.registrarusuario.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
import com.rec.hitss.service.util.ConstantesPortalUtil;
import com.rec.hitss.service.util.DuplicateUserDNIException;
import com.rec.hitss.service.util.TiempoUtil;
import com.rec.hitss.service.util.ValidateUtil;
import com.rec.registrarusuario.service.RegistrarUsuarioService;
import com.rec.registrarusuario.util.ConstantesUtil;

@Controller
@RequestMapping("VIEW")
public class RegistrarUsuarioController {

	private static Log LOG = LogFactoryUtil.getLog(RegistrarUsuarioController.class);

	@Autowired
	private RegistrarUsuarioService registrarUsuarioService;

	@RenderMapping()
	public String get(RenderRequest request, RenderResponse response, Model model) {
		LOG.debug("get Incio");	
		return "view";
	}

	// @ActionMapping(value = "registrarUsuario")
	@ResourceMapping(value = "registrarUsuario")
	@ResponseBody
	protected void registrarUsuario(ResourceRequest request, ResourceResponse response, Model model) throws IOException {
		LOG.debug("registrarUsuario");

		ThemeDisplay themeDisplay = (ThemeDisplay) request.getAttribute(WebKeys.THEME_DISPLAY);
		
		JSONObject respuestaRegistro = JSONFactoryUtil.createJSONObject();
		
		Map<String, String> objValidacion = null;
		
		try {
			ServiceContext serviceContext = ServiceContextFactory.getInstance(request);

			int prefixId = 0;
			int suffixId = 0;

			long facebookId = 0;
			String openId = StringPool.BLANK;
			boolean sendEmail = false;

			long creatorUserId = ConstantesPortalUtil.CERO;
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

			objValidacion = validarRegistroUsuario(strNombre, strApep, strUsuario, strEmail, puestoactual, strGenero, nroDocumento, strFechaNacimiento,
					strPassword, strPassword2);
						
			if (objValidacion.get(ConstantesPortalUtil.MENSAJE_CORRECTO).equals(ConstantesPortalUtil.MENSAJE_OK)) {
				LOG.debug("Campos validos:");
				String[] nombres = strNombre.split(StringPool.SPACE);
				strNombre = nombres[0];
				String strSegundoNombre = (nombres.length > ConstantesPortalUtil.CERO) ? StringPool.BLANK : nombres[1];

				Date fechanacimiento = TiempoUtil.getFechaStringDate(strFechaNacimiento);			
				int birthdayMonth = fechanacimiento.getMonth();
				int birthdayDay = fechanacimiento.getDay();
				int birthdayYear = fechanacimiento.getYear();

				LOG.debug("fechanacimiento:" + fechanacimiento);

				System.out.println(objValidacion);
				
				User nuevoPostulante = registrarUsuarioService.registrarUsuarioPostulante(creatorUserId, companyId, autoPassword, strPassword, strPassword2, autoScreenName,
						strUsuario, strEmail, facebookId, openId, locale, strNombre, strSegundoNombre, strApep, prefixId, suffixId, male, birthdayMonth, birthdayDay, birthdayYear,
						puestoactual, groupIds, organizationIds, roleIds, userGroupIds, sendEmail, camposExtras, serviceContext);

			} else {
				LOG.debug("Campos invalidos:");				
				respuestaRegistro.put("errores", "test");
				respuestaRegistro.put("count", 2);
			}

		} catch (DuplicateUserEmailAddressException e) {
			objValidacion.put(ConstantesPortalUtil.MENSAJE_CORRECTO, ConstantesPortalUtil.MENSAJE_NO_OK);
			objValidacion.put(ConstantesUtil.CAMPO_CORREO_DUPLICADO_MESAJE_ERROR, ConstantesUtil.CORREO_DUPLICADO_MESAJE_ERROR);			
			LOG.error("DuplicateUserEmailAddressException Error con Email", e);
		} catch (DuplicateUserDNIException e) {
			objValidacion.put(ConstantesPortalUtil.MENSAJE_CORRECTO, ConstantesPortalUtil.MENSAJE_NO_OK);
			objValidacion.put(ConstantesUtil.CAMPO_DNI_DUPLICADO_MESAJE_ERROR, ConstantesUtil.DNI_DUPLICADO_MESAJE_ERROR);			
			LOG.error("DuplicateUserDNIException", e);
		} catch (DuplicateUserScreenNameException e) {
			
			
			LOG.error("DuplicateUserScreenNameException", e);
		} catch (PortalException e) {
			LOG.error("PortalException", e);

		} catch (SystemException e) {
			LOG.error("SystemException", e);
		}

		
		response.getWriter().write(respuestaRegistro.toString());

	}

	private Map<String, String> validarRegistroUsuario(String strNombre, String strApep, String strUsuario, String strEmail, String puestoactual, String strGenero,
			String nroDocumento, String strFechaNacimiento, String strPassword, String strPassword2) {
		Map<String, String> objValidacion = new LinkedHashMap<String, String>();
		objValidacion.put(ConstantesPortalUtil.MENSAJE_CORRECTO, ConstantesPortalUtil.MENSAJE_OK);
		LOG.debug("validarRegistroUsuario :");

		if(!ValidateUtil.esValCadena(strNombre)) {		
			LOG.debug("Error con strNombre:"+strNombre);
			objValidacion.put(ConstantesPortalUtil.MENSAJE_CORRECTO, ConstantesPortalUtil.MENSAJE_NO_OK);
			objValidacion.put(ConstantesUtil.CAMPO_NOMBRES_MESAJE_ERROR, ConstantesUtil.NOMBRES_MESAJE_ERROR);				
		}
		
		if (!ValidateUtil.esValCadena(strApep)) {		
			LOG.debug("Error con strApep:"+strApep);
			objValidacion.put(ConstantesPortalUtil.MENSAJE_CORRECTO, ConstantesPortalUtil.MENSAJE_NO_OK);
			objValidacion.put(ConstantesUtil.CAMPO_APELIIDOS_MESAJE_ERROR, ConstantesUtil.APELIIDOS_MESAJE_ERROR);	
			
		}
		
		if (!ValidateUtil.esCorreo(strEmail)) {
			LOG.debug("Error con strEmail:"+strEmail);
			objValidacion.put(ConstantesPortalUtil.MENSAJE_CORRECTO, ConstantesPortalUtil.MENSAJE_NO_OK);
			objValidacion.put(ConstantesUtil.CAMPO_CORREO_MESAJE_ERROR, ConstantesUtil.CORREO_MESAJE_ERROR);			
		}
		
		if (!ValidateUtil.esValCadena(puestoactual)) {
			LOG.debug("Error con puestoactual:"+puestoactual);
			objValidacion.put(ConstantesPortalUtil.MENSAJE_CORRECTO, ConstantesPortalUtil.MENSAJE_NO_OK);
			objValidacion.put(ConstantesUtil.CAMPO_PUESTO_MESAJE_ERROR, ConstantesUtil.PUESTO_MESAJE_ERROR);		
			
		}
				
		if (!ValidateUtil.esDni(nroDocumento)) {
			LOG.debug("Error con nroDocumento:"+nroDocumento);
			objValidacion.put(ConstantesPortalUtil.MENSAJE_CORRECTO, ConstantesPortalUtil.MENSAJE_NO_OK);
			objValidacion.put(ConstantesUtil.CAMPO_DNI_MESAJE_ERROR, ConstantesUtil.DNI_MESAJE_ERROR);		
			
		}
		
		if (!ValidateUtil.isNotNull(strFechaNacimiento)) {
			LOG.debug("Error con strFechaNacimiento:"+strFechaNacimiento);
			objValidacion.put(ConstantesPortalUtil.MENSAJE_CORRECTO, ConstantesPortalUtil.MENSAJE_NO_OK);
			objValidacion.put(ConstantesUtil.CAMPO_FECHA_MESAJE_ERROR, ConstantesUtil.FECHA_MESAJE_ERROR);		
			
		}else{
			try {
				TiempoUtil.getFechaStringDate(strFechaNacimiento);
			} catch (Exception e) {
				LOG.debug("Error con strFechaNacimiento:"+strFechaNacimiento);
				objValidacion.put(ConstantesPortalUtil.MENSAJE_CORRECTO, ConstantesPortalUtil.MENSAJE_NO_OK);
				objValidacion.put(ConstantesUtil.CAMPO_FECHA_MESAJE_ERROR, ConstantesUtil.FECHA_MESAJE_ERROR);		
			}
		}
		
		if (ValidateUtil.esValCadena(strPassword)) {
			if (ValidateUtil.esValCadena(strPassword2)) {
				if(!(strPassword.trim().equals(strPassword2.trim()))){
					LOG.debug("No conincide los passwords con strPassword2:"+strPassword2);
					objValidacion.put(ConstantesPortalUtil.MENSAJE_CORRECTO, ConstantesPortalUtil.MENSAJE_NO_OK);
					objValidacion.put(ConstantesUtil.CAMPO_PASSWORD_COMPARAR_MESAJE_ERROR, ConstantesUtil.PASSWORD_COMPARAR_MESAJE_ERROR);
				}
			}else{
				LOG.debug("No se ingreso strPassword2:"+strPassword2);
				objValidacion.put(ConstantesPortalUtil.MENSAJE_CORRECTO, ConstantesPortalUtil.MENSAJE_NO_OK);
				objValidacion.put(ConstantesUtil.CAMPO_PASSWORD2_MESAJE_ERROR, ConstantesUtil.PASSWORD2_MESAJE_ERROR);		
			}
		}else{
			LOG.debug("Error con strPassword:"+strPassword);
			objValidacion.put(ConstantesPortalUtil.MENSAJE_CORRECTO, ConstantesPortalUtil.MENSAJE_NO_OK);
			objValidacion.put(ConstantesUtil.CAMPO_PASSWORD_MESAJE_ERROR, ConstantesUtil.PASSWORD_MESAJE_ERROR);	
		}
		
		
		return objValidacion;
	}

	@ResourceMapping(value = "validarUsuarioPostulante")
	@ResponseBody
	public void validarUsuarioPostulante(ResourceRequest request, ResourceResponse response) throws IOException {
		String usuario_postulante = request.getParameter("usuario_postulante");
		int count = 0;
		boolean existen = false;
		try {
			count = registrarUsuarioService.validarUsuarioNuevoPostulante(usuario_postulante);
			if (count > ConstantesPortalUtil.CERO) {
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
