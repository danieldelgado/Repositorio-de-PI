package com.rec.registrarusuario.service;

import java.util.Date;
import java.util.Locale;

import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.model.User;
import com.liferay.portal.service.ServiceContext;

public interface RegistrarUsuarioService {

	User registrarUsuarioPostulante(long companyId, long groupId, int prefixId, int suffixId, String strNombre, String strApep, String strEmail, String strGenero, String nroDocumento,
			Date dtFechaNacimiento, String strPassword,Locale locale, ServiceContext serviceContext ) throws SystemException, PortalException;

}
