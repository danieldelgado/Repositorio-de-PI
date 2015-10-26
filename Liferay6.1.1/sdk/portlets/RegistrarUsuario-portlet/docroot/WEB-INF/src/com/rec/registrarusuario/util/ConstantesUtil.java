package com.rec.registrarusuario.util;

import com.liferay.util.portlet.PortletProps;


public class ConstantesUtil {
	
	public static final String COLUMNID = "columnId";
	
	public static final String CLASSNAMEID = "classNameId";
	
	public static final String DNI = "DNI";
	
	public static final String EMAILADDRESS = "emailAddress";
	
	public static final String SCREENNAME = "screenName";
		
	public static String GENERO_FEMENINO_LETRA = PortletProps.get("form.genero.femenino.value");
	
	public static String CAMPO_PERSONALIZADO_DNI = PortletProps.get("campo.personalizado.dni");
	
	public static String DESCRIPCION_ROL_POSTULANTE = PortletProps.get("rol.portal.postulante");
	

	public static String CAMPO_NOMBRES_MESAJE_ERROR = "nombre";
	public static String NOMBRES_MESAJE_ERROR = PortletProps.get("form.nombre.mesaje.error");
	
	public static String CAMPO_APELIIDOS_MESAJE_ERROR = "apellidos";
	public static String APELIIDOS_MESAJE_ERROR = PortletProps.get("form.apellidos.mesaje.error");

	public static String CAMPO_CORREO_MESAJE_ERROR = "correo";
	public static String CORREO_MESAJE_ERROR = PortletProps.get("form.correo.mesaje.error");
	
	public static String CAMPO_CORREO_DUPLICADO_MESAJE_ERROR = "correo";
	public static String CORREO_DUPLICADO_MESAJE_ERROR = PortletProps.get("form.correo.mesaje.duplicado.error");
	
	public static String CAMPO_PUESTO_MESAJE_ERROR = "puesto";
	public static String PUESTO_MESAJE_ERROR = PortletProps.get("form.puesto.mesaje.error");
	
	public static String CAMPO_FECHA_MESAJE_ERROR = "fechanacimiento";
	public static String FECHA_MESAJE_ERROR = PortletProps.get("form.fecha.mesaje.error");

	public static String CAMPO_DNI_MESAJE_ERROR = "dni";
	public static String DNI_MESAJE_ERROR = PortletProps.get("form.dni.mesaje.error");
	
	public static String CAMPO_DNI_DUPLICADO_MESAJE_ERROR = "dni";
	public static String DNI_DUPLICADO_MESAJE_ERROR = PortletProps.get("form.dni.duplicado.mesaje.error");
	
	
	
	
	public static String CAMPO_PASSWORD_MESAJE_ERROR = "password";
	public static String PASSWORD_MESAJE_ERROR = PortletProps.get("form.password.mesaje.error");
	
	public static String CAMPO_PASSWORD_COMPARAR_MESAJE_ERROR = "password2.comparar";
	public static String PASSWORD_COMPARAR_MESAJE_ERROR = PortletProps.get("form.password2.comparar.mesaje.error");
	
	public static String CAMPO_PASSWORD2_MESAJE_ERROR = "password2";
	public static String PASSWORD2_MESAJE_ERROR = PortletProps.get("form.password2.mesaje.error");
	
	
}
