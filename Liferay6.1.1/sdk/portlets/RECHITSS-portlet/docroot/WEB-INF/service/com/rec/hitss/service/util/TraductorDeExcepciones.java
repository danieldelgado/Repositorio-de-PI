package com.rec.hitss.service.util;


import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;



public class TraductorDeExcepciones {

	private static Log _log = LogFactoryUtil.getLog(TraductorDeExcepciones.class);

	public static void traducir(Exception e) throws BusinessException {
		
		e.printStackTrace();
		_log.debug("error", e);

		throw new BusinessException(e.getMessage());
				
	}
}
