package com.rec.registrarusuario.util;

import com.liferay.util.portlet.PortletProps;


public class ConstantesUtil {

	public static final long CERO = 0;
	
	public static final String COLUMNID = "columnId";
	public static final String CLASSNAMEID = "classNameId";
	public static final String DATA = "data";
	public static final String DNI = "DNI";
	public static final String SCREENNAME = "screenName";
	
	public static String GENERO_FEMENINO_LETRA = PortletProps.get("form.genero.femenino.value");
	public static String CAMPO_PERSONALIZADO_DNI = PortletProps.get("campo.personalizado.dni");
	public static String DESCRIPCION_ROL_POSTULANTE = PortletProps.get("rol.portal.postulante");
	
}
