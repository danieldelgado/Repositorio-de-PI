package com.rec.registrarusuario.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import com.liferay.portal.kernel.util.MethodKey;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.PortalClassInvoker;
import com.liferay.portal.kernel.util.PropsUtil;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.kernel.util.WebKeys;
import com.liferay.portal.model.CompanyConstants;
import com.liferay.portal.model.Role;
import com.liferay.portal.model.User;
import com.liferay.portal.service.RoleLocalServiceUtil;
import com.liferay.portal.service.ServiceContext;
import com.liferay.portal.service.ServiceContextFactory;
import com.liferay.portal.theme.ThemeDisplay;
import com.liferay.portal.util.PortalUtil;
import com.rec.hitss.service.util.BeanRespuesta;
import com.rec.hitss.service.util.ConstantesPortalUtil;
import com.rec.hitss.service.util.DuplicateUserDNIException;
import com.rec.hitss.service.util.JsonUtil;
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
		User user = (User) request.getAttribute(WebKeys.USER);
		model.addAttribute(ConstantesUtil.CAMPO_MENSAJE_VALIDACION + ConstantesUtil.CAMPO_NOMBRES_MESAJE_ERROR, ConstantesUtil.NOMBRES_MESAJE_ERROR);
		model.addAttribute(ConstantesUtil.CAMPO_MENSAJE_VALIDACION + ConstantesUtil.CAMPO_APELIIDOS_MESAJE_ERROR, ConstantesUtil.APELIIDOS_MESAJE_ERROR);
		model.addAttribute(ConstantesUtil.CAMPO_MENSAJE_VALIDACION + ConstantesUtil.CAMPO_CORREO_MESAJE_ERROR, ConstantesUtil.CORREO_MESAJE_ERROR);
		model.addAttribute(ConstantesUtil.CAMPO_MENSAJE_VALIDACION + ConstantesUtil.CAMPO_CORREO_DUPLICADO_MESAJE_ERROR, ConstantesUtil.CORREO_DUPLICADO_MESAJE_ERROR);
		model.addAttribute(ConstantesUtil.CAMPO_MENSAJE_VALIDACION + ConstantesUtil.CAMPO_PUESTO_MESAJE_ERROR, ConstantesUtil.PUESTO_MESAJE_ERROR);
		model.addAttribute(ConstantesUtil.CAMPO_MENSAJE_VALIDACION + ConstantesUtil.CAMPO_DNI_MESAJE_ERROR, ConstantesUtil.DNI_MESAJE_ERROR);
		model.addAttribute(ConstantesUtil.CAMPO_MENSAJE_VALIDACION + ConstantesUtil.CAMPO_DNI_DUPLICADO_MESAJE_ERROR, ConstantesUtil.DNI_DUPLICADO_MESAJE_ERROR);
		model.addAttribute(ConstantesUtil.CAMPO_MENSAJE_VALIDACION + ConstantesUtil.CAMPO_FECHA_MESAJE_ERROR, ConstantesUtil.FECHA_MESAJE_ERROR);
		model.addAttribute(ConstantesUtil.CAMPO_MENSAJE_VALIDACION + ConstantesUtil.CAMPO_PASSWORD_COMPARAR_MESAJE_ERROR, ConstantesUtil.PASSWORD_COMPARAR_MESAJE_ERROR);
		model.addAttribute(ConstantesUtil.CAMPO_MENSAJE_VALIDACION + ConstantesUtil.CAMPO_PASSWORD2_MESAJE_ERROR, ConstantesUtil.PASSWORD2_MESAJE_ERROR);
		if (user == null) {
			return "view";
		} else {
			return registrarCV(request, response, user, model);
		}
	}

	@ActionMapping(params = "action=registrarUsuario")
	protected void registrarUsuario(ActionRequest request, ActionResponse response, Model model) throws IOException {
		LOG.debug("registrarUsuario");

		ThemeDisplay themeDisplay = (ThemeDisplay) request.getAttribute(WebKeys.THEME_DISPLAY);
		User user = (User) request.getAttribute(WebKeys.USER);
		List<BeanRespuesta> respuestas = null;
		User nuevoPostulante = null;
		Map<String, Object> mapRepuesta = new HashMap<String, Object>();
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
			System.out.println(request.getParameterMap());
			LOG.debug("strUsuario:" + strUsuario);

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
			model.addAttribute("val_nombre", strNombre);

			LOG.debug("strApep:" + strApep);
			model.addAttribute("val_apellidos", strApep);

			LOG.debug("puestoactual:" + puestoactual);
			model.addAttribute("val_puestoactual", puestoactual);

			LOG.debug("strEmail:" + strEmail);
			model.addAttribute("val_correo", strEmail);

			LOG.debug("strGenero:" + strGenero);

			model.addAttribute("val_genero", strGenero);

			LOG.debug("nroDocumento:" + nroDocumento);
			model.addAttribute("val_dni", nroDocumento);

			LOG.debug("strFechaNacimiento:" + strFechaNacimiento);
			model.addAttribute("val_fechaNacimiento", strFechaNacimiento);

			LOG.debug("male:" + male);

			LOG.debug("strFechaNacimiento:" + strFechaNacimiento);
			model.addAttribute("val_strFechaNacimiento", strFechaNacimiento);

			LOG.debug("strPassword:" + strPassword);
			model.addAttribute("val_strPassword", strPassword);

			LOG.debug("strPassword2:" + strPassword2);
			model.addAttribute("val_strPassword2", strPassword2);

			LOG.debug("camposExtras:" + camposExtras);

			respuestas = validarRegistroUsuario(user, strNombre, strApep, strUsuario, strEmail, puestoactual, strGenero, nroDocumento, strFechaNacimiento, strPassword, strPassword2);

			if (respuestas.isEmpty()) {
				LOG.debug("Campos validos:");
				String[] nombres = strNombre.split(StringPool.SPACE);
				strNombre = nombres[0];
				String strSegundoNombre = (nombres.length > ConstantesPortalUtil.CERO) ? StringPool.BLANK : nombres[1];
				Date fechanacimiento = TiempoUtil.getFechaStringDate(strFechaNacimiento);
				Calendar calendar = Calendar.getInstance();
				calendar.setTime(fechanacimiento);
				LOG.debug("fechanacimiento:" + fechanacimiento);
				int birthdayMonth = calendar.get(Calendar.MONTH);
				int birthdayDay = calendar.get(Calendar.DAY_OF_WEEK);
				int birthdayYear = calendar.get(Calendar.YEAR);
				if (user == null) {
					nuevoPostulante = registrarUsuarioService.registrarUsuarioPostulante(creatorUserId, companyId, autoPassword, strPassword, strPassword2, autoScreenName, strUsuario, strEmail, facebookId, openId, locale, strNombre, strSegundoNombre, strApep, prefixId, suffixId,
							male, birthdayMonth, birthdayDay, birthdayYear, puestoactual, groupIds, organizationIds, roleIds, userGroupIds, sendEmail, camposExtras, serviceContext);
					mapRepuesta.put(ConstantesPortalUtil.MENSAJE_CORRECTO, ConstantesPortalUtil.MENSAJE_OK);
					mapRepuesta.put("nuevoPostulante", nuevoPostulante.getFullName());

					String reString = themeDisplay.getURLCurrent();
					reString += StringPool.AMPERSAND + PropsUtil.get("portal.auto.login.url.patern.paramlogin") + StringPool.EQUAL + nuevoPostulante.getEmailAddress();
					reString += StringPool.AMPERSAND + PropsUtil.get("portal.auto.login.url.patern.parampassword") + StringPool.EQUAL + nuevoPostulante.getPasswordUnencrypted();
					// response.setRenderParameter("action", "registrarPerfil");
					MethodKey key = new MethodKey("com.liferay.portlet.login.util.LoginUtil", "login", HttpServletRequest.class, HttpServletResponse.class, String.class, String.class, boolean.class, String.class);
					PortalClassInvoker.invoke(false, key, new Object[] { PortalUtil.getHttpServletRequest(request), PortalUtil.getHttpServletResponse(response), nuevoPostulante.getEmailAddress(), nuevoPostulante.getPassword(), false, CompanyConstants.AUTH_TYPE_EA });
					response.sendRedirect(reString);
				} else {
					nuevoPostulante = registrarUsuarioService.actualizarPerfil(user, companyId, autoPassword, strPassword, strPassword2, autoScreenName, strUsuario, strEmail, facebookId, openId, locale, strNombre, strSegundoNombre, strApep, prefixId, suffixId, male,
							birthdayMonth, birthdayDay, birthdayYear, puestoactual, groupIds, organizationIds, roleIds, userGroupIds, sendEmail, camposExtras, serviceContext);

				}

			}
		} catch (DuplicateUserEmailAddressException e) {

			BeanRespuesta rp = new BeanRespuesta(ConstantesUtil.CAMPO_CORREO_DUPLICADO_MESAJE_ERROR, ConstantesUtil.CORREO_DUPLICADO_MESAJE_ERROR);
			respuestas.add(rp);
			LOG.error("DuplicateUserEmailAddressException");

		} catch (DuplicateUserDNIException e) {

			BeanRespuesta rp = new BeanRespuesta(ConstantesUtil.CAMPO_DNI_DUPLICADO_MESAJE_ERROR, ConstantesUtil.DNI_DUPLICADO_MESAJE_ERROR);
			respuestas.add(rp);
			LOG.error("DuplicateUserDNIException");

		} catch (DuplicateUserScreenNameException e) {
			LOG.error("DuplicateUserScreenNameException ");
		} catch (PortalException e) {
			LOG.error("PortalException", e);
		} catch (SystemException e) {
			LOG.error("SystemException", e);
		} catch (Exception e) {
			LOG.error("Exception", e);
		}
		mapRepuesta.put("errores", respuestas);
		String rsp = JsonUtil.getJsonObject(mapRepuesta);
		LOG.debug(rsp);
		model.addAttribute("respuestas", rsp);
	}

	@RequestMapping("VIEW")
	@RenderMapping(params = "action=registrarPerfil")
	public String registrarCV(RenderRequest request, RenderResponse response, User user, Model model) {
		try {
			model.addAttribute("user_uuid", user.getUuid());

			model.addAttribute("val_usuario", user.getScreenName());

			model.addAttribute("val_nombre", user.getFirstName());

			model.addAttribute("val_apellidos", user.getLastName());

			model.addAttribute("val_puestoactual", user.getJobTitle());

			model.addAttribute("val_correo", user.getEmailAddress());

			model.addAttribute("val_genero", user.getMale());

			model.addAttribute("val_dni", user.getExpandoBridge().getAttribute(ConstantesUtil.DNI));

			model.addAttribute("val_fechaNacimiento", TiempoUtil.getFechaActualConPatronyDate("dd-MM-yyyy", user.getBirthday()));

		} catch (PortalException e) {
			LOG.error("PortalException", e);
		} catch (SystemException e) {
			LOG.error("SystemException", e);
		}
		return "registrar_perfil";
	}

	private List<BeanRespuesta> validarRegistroUsuario(User user, String strNombre, String strApep, String strUsuario, String strEmail, String puestoactual, String strGenero, String nroDocumento, String strFechaNacimiento, String strPassword, String strPassword2) {
		List<BeanRespuesta> respuestas = new ArrayList<BeanRespuesta>();

		LOG.debug("validarRegistroUsuario :");

		if (!ValidateUtil.esValCadena(strNombre)) {
			LOG.debug("Error con strNombre:" + strNombre);
			BeanRespuesta rp = new BeanRespuesta(ConstantesUtil.CAMPO_NOMBRES_MESAJE_ERROR, ConstantesUtil.NOMBRES_MESAJE_ERROR);
			respuestas.add(rp);
		}

		if (!ValidateUtil.esValCadena(strApep)) {
			LOG.debug("Error con strApep:" + strApep);
			BeanRespuesta rp = new BeanRespuesta(ConstantesUtil.CAMPO_APELIIDOS_MESAJE_ERROR, ConstantesUtil.APELIIDOS_MESAJE_ERROR);
			respuestas.add(rp);
		}

		if (!ValidateUtil.esCorreo(strEmail)) {
			LOG.debug("Error con strEmail:" + strEmail);
			BeanRespuesta rp = new BeanRespuesta(ConstantesUtil.CAMPO_CORREO_MESAJE_ERROR, ConstantesUtil.CORREO_MESAJE_ERROR);
			respuestas.add(rp);
		}

		if (!ValidateUtil.esValCadena(puestoactual)) {
			LOG.debug("Error con puestoactual:" + puestoactual);
			BeanRespuesta rp = new BeanRespuesta(ConstantesUtil.CAMPO_PUESTO_MESAJE_ERROR, ConstantesUtil.PUESTO_MESAJE_ERROR);
			respuestas.add(rp);

		}

		if (!ValidateUtil.esDni(nroDocumento)) {
			LOG.debug("Error con nroDocumento:" + nroDocumento);
			BeanRespuesta rp = new BeanRespuesta(ConstantesUtil.CAMPO_DNI_MESAJE_ERROR, ConstantesUtil.DNI_MESAJE_ERROR);
			respuestas.add(rp);
		}

		if (!ValidateUtil.isNotNull(strFechaNacimiento)) {
			LOG.debug("Error con strFechaNacimiento:" + strFechaNacimiento);
			BeanRespuesta rp = new BeanRespuesta(ConstantesUtil.CAMPO_FECHA_MESAJE_ERROR, ConstantesUtil.FECHA_MESAJE_ERROR);
			respuestas.add(rp);

		} else {
			try {
				TiempoUtil.getFechaStringDate(strFechaNacimiento);
			} catch (Exception e) {
				LOG.debug("Error con strFechaNacimiento:" + strFechaNacimiento);
				BeanRespuesta rp = new BeanRespuesta(ConstantesUtil.CAMPO_FECHA_MESAJE_ERROR, ConstantesUtil.FECHA_MESAJE_ERROR);
				respuestas.add(rp);
			}
		}
		if (user == null) {
			if (ValidateUtil.esValCadena(strPassword)) {
				if (ValidateUtil.esValCadena(strPassword2)) {
					if (!(strPassword.trim().equals(strPassword2.trim()))) {
						LOG.debug("No conincide los passwords con strPassword2:" + strPassword2);
						BeanRespuesta rp = new BeanRespuesta(ConstantesUtil.CAMPO_PASSWORD_COMPARAR_MESAJE_ERROR, ConstantesUtil.PASSWORD_COMPARAR_MESAJE_ERROR);
						respuestas.add(rp);
					}
				} else {
					LOG.debug("No se ingreso strPassword2:" + strPassword2);
					BeanRespuesta rp = new BeanRespuesta(ConstantesUtil.CAMPO_PASSWORD2_MESAJE_ERROR, ConstantesUtil.PASSWORD2_MESAJE_ERROR);
					respuestas.add(rp);
				}
			} else {
				LOG.debug("Error con strPassword:" + strPassword);
				BeanRespuesta rp = new BeanRespuesta(ConstantesUtil.CAMPO_PASSWORD_MESAJE_ERROR, ConstantesUtil.PASSWORD_MESAJE_ERROR);
				respuestas.add(rp);
			}
		}

		return respuestas;
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
