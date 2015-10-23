package com.rec.hitss.service.util;

import java.util.List;
import java.util.regex.Pattern;

import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.PropsUtil;


/**
 * @author Danielle Delgado
 * 
 */
public class ValidateUtil {
	private static Log LOG = LogFactoryUtil.getLog(ValidateUtil.class);

	private static final String VAL_LIMITE_CADENA = PropsUtil.get("validateutil.val_limite_cadena");
	private static final String VAL_ID_COMPUESTO = PropsUtil.get("validateutil.val_id_compuesto");
	private static final String VAL_NOMBRE = PropsUtil.get("validateutil.val_nombre");
	private static final String VAL_NOMBRE_COMPLETO = PropsUtil.get("validateutil.val_nombre_completo");
	private static final String VAL_DIRECCION = PropsUtil.get("validateutil.val_direccion");
	private static final String VAL_EMAIL = PropsUtil.get("validateutil.val_email");
	private static final String VAL_TELEFONO = PropsUtil.get("validateutil.val_telefono");
	private static final String VAL_CELULAR = PropsUtil.get("validateutil.val_celular");
	private static final String VAL_DNI = PropsUtil.get("validateutil.val_dni");
	private static final String VAL_RUC = PropsUtil.get("validateutil.val_ruc");
	private static final String VAL_CARNET_EXTRANJERIA = PropsUtil.get("validateutil.val_carnet_extranjeria");
	private static final String VAL_PASAPORTE = PropsUtil.get("validateutil.val_pasaporte");
	private static final String VAL_LIMITE_COMENTARIO = PropsUtil.get("validateutil.val_limite_comentario");
	private static final String VAL_LIMITE_TEXTO = PropsUtil.get("validateutil.val_limite_texto");
	private static final String VAL_EXTENXION_ARCHIVO_IMAGEN = PropsUtil.get("validateutil.val_extenxion_archivo_imagen");
	private static final String VAL_EXTENXION_ARCHIVO = PropsUtil.get("validateutil.val_extenxion_archivo");

	private ValidateUtil() {

	}

	public static boolean esNombre(String valor) {
		if (isNull(valor)) {
			return false;
		}
		return validar(VAL_NOMBRE, valor);
	}

	public static boolean esNombreCompleto(String valor) {
		if (isNull(valor)) {
			return false;
		}
		return validar(VAL_NOMBRE_COMPLETO, valor);
	}

	public static boolean esCorreo(String valor) {
		if (isNull(valor)) {
			return false;
		}
		return validar(VAL_EMAIL, valor);
	}

	public static boolean esTelefono(String valor) {
		if (isNull(valor)) {
			return false;
		}
		return validar(VAL_TELEFONO, valor);
	}

	public static boolean esCelular(String celular) {
		if (isNull(celular)) {
			return false;
		} else {
			if (!celular.subSequence(ConstantesPortalUtil.NUMBER_0, ConstantesPortalUtil.NUMBER_1).equals(String.valueOf(ConstantesPortalUtil.NUMBER_9))) {
				return false;
			}
		}
		return validar(VAL_CELULAR, celular);
	}

	public static boolean esDni(String valor) {
		if (isNull(valor)) {
			return false;
		} else {
			if (valor.equals(ConstantesPortalUtil.DNI_00000000)) {
				return false;
			}
		}
		return validar(VAL_DNI, valor);
	}

	public static boolean isRUC(String ruc) {
		if (isNull(ruc)) {
			return false;
		} else {
			if (ruc.subSequence(ConstantesPortalUtil.NUMBER_0, ConstantesPortalUtil.NUMBER_1).equals(String.valueOf(ConstantesPortalUtil.NUMBER_1))
					&& ruc.subSequence(ConstantesPortalUtil.NUMBER_0, ConstantesPortalUtil.NUMBER_1).equals(String.valueOf(ConstantesPortalUtil.NUMBER_2))) {
				return false;
			}
		}
		return validar(VAL_RUC, ruc);
	}

	public static boolean esDireccion(String direccion) {
		if (isNull(direccion)) {
			return false;
		}
		return validar(VAL_DIRECCION, direccion);
	}

	public static boolean isPasaporte(String pasaporte) {
		if (isNull(pasaporte)) {
			return false;
		}
		return validar(VAL_PASAPORTE, pasaporte);
	}

	public static boolean esCarneExtranjeria(String ce) {
		if (isNull(ce)) {
			return false;
		}
		return validar(VAL_CARNET_EXTRANJERIA, ce);
	}

	public static boolean isNumber(String number) {
		if (isNull(number)) {
			return false;
		}
		for (char c : number.toCharArray()) {
			if (!isDigit(c)) {
				return false;
			}
		}
		return true;
	}

	public static boolean isDigit(char c) {
		int x = c;
		if ((x >= ConstantesPortalUtil.BEGIN_REDIG) && (x <= ConstantesPortalUtil.END_REDIG)) {
			return true;
		}
		return false;
	}

	public static boolean isNull(List<?> listaObj) {
		if (listaObj == null || listaObj.isEmpty()) {
			return true;
		}
		return false;
	}

	public static boolean isNull(String s) {
		if (s == null || s.length() == ConstantesPortalUtil.NUMBER_0) {
			return true;
		}
		return false;
	}

	public static boolean isNull(Long l) {
		if (l==null || (l.longValue() == ConstantesPortalUtil.NUMBER_0)) {
			return true;
		}
		return false;
	}

	public static boolean isNull(Integer l) {
		if (l == null || (l.intValue() == ConstantesPortalUtil.NUMBER_0)) {
			return true;
		}
		return true;
	}

	public static boolean isNull(Object obj) {
		if (obj == null) {
			return true;
		}
		return false;
	}

	public static boolean isNotNull(Long l) {
		return !isNull(l);
	}

	public static boolean isNotNull(Object obj) {
		return !isNull(obj);
	}
	public static boolean isNotNull(String txt) {
		return !isNull(txt);
	}

	public static boolean isNotNull(List<?> lst) {
		return !isNull(lst);
	}

	public static boolean isNotNull(Object[] array) {
		return !isNull(array);
	}

	public static boolean isCero(int num) {
		return num == ConstantesPortalUtil.NUMBER_0;
	}

	public static boolean isCero(Integer num) {
		if (isNull(num)) {
			return false;
		}
		return num == ConstantesPortalUtil.NUMBER_0;
	}

	public static boolean isValPositivo(Integer entero) {
		if (isCero(entero)) {
			return false;
		}
		return ConstantesPortalUtil.NUMBER_0 < entero;
	}

	public static boolean isValDecimalNoCero(Double numero) {
		if (numero != null) {
			return numero != ConstantesPortalUtil.NUMBER_0;
		}
		return false;
	}

	public static boolean isValDecimalPositivo(Double numero) {
		if (numero != null) {
			return ConstantesPortalUtil.NUMBER_0 < numero;
		}
		return false;
	}

	public static boolean isValDecimal(String texto) {
		try {
			Double.parseDouble(texto);
			return true;
		} catch (NumberFormatException nfe) {
			return false;
		}
	}

	public static boolean esValCadena(String cadena) {
		if (isNull(cadena)) {
			return false;
		}
		return validar(VAL_LIMITE_CADENA, cadena);
	}

	public static boolean esValIdCompuesto(String cadena) {
		if (isNull(cadena)) {
			return false;
		}
		return validar(VAL_ID_COMPUESTO, cadena);
	}

	public static boolean esValTexto(String texto) {
		if (isNull(texto)) {
			return false;
		}
		return validar(VAL_LIMITE_TEXTO, texto);
	}

	public static boolean esValTamanno(String cadena, int tamanno) {
		if ((cadena.length() > 0) && (cadena.length() <= tamanno)) {
			return true;
		}
		return false;
	}

	public static boolean esValComentarioMax(String cadena, int tamanno) {
		if (isNull(cadena)) {
			return false;
		} else {
			if (esValTamanno(cadena, tamanno)) {
				return validar(VAL_LIMITE_COMENTARIO, cadena);
			}
		}
		return false;
	}

	public static boolean esValFileOffice(String fileName) {
		if (isNull(fileName)) {
			return false;
		}
		return validar(VAL_EXTENXION_ARCHIVO, fileName);
	}

	public static boolean esValImage(String fileName) {
		if (isNull(fileName)) {
			return false;
		}
		return validar(VAL_EXTENXION_ARCHIVO_IMAGEN, fileName);
	}

	public static boolean validar(String expresionRegular, String valor) {
		LOG.debug("validar expresionRegular:"+expresionRegular);
		LOG.debug("validar valor:"+valor);
		Pattern patron = Pattern.compile(expresionRegular);
		return patron.matcher(valor).matches();
	}

}