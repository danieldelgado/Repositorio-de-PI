package com.rec.registrarusuario.service;

import java.util.Locale;
import java.util.Map;

import com.liferay.portal.DuplicateUserEmailAddressException;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.model.User;
import com.liferay.portal.service.ServiceContext;
import com.rec.hitss.service.util.DuplicateUserDNIException;

public interface RegistrarUsuarioService {

	User registrarUsuarioPostulante(long creatorUserId, long companyId, boolean autoPassword,
			String password1, String password2, boolean autoScreenName,
			String screenName, String emailAddress, long facebookId,
			String openId, Locale locale, String firstName, String middleName,
			String lastName, int prefixId, int suffixId, boolean male,
			int birthdayMonth, int birthdayDay, int birthdayYear,
			String jobTitle, long[] groupIds, long[] organizationIds,
			long[] roleIds, long[] userGroupIds, boolean sendEmail, Map<String, String> camposExtra,
			ServiceContext serviceContext) throws DuplicateUserEmailAddressException,
			DuplicateUserDNIException, SystemException, PortalException;

	int validarUsuarioNuevoPostulante(String usuario_postulante) throws SystemException ;

	User actualizarPerfil(User user, long companyId, boolean autoPassword, String strPassword, String strPassword2, boolean autoScreenName, String strUsuario, String strEmail, long facebookId, String openId, Locale locale, String strNombre, String strSegundoNombre,
			String strApep, int prefixId, int suffixId, boolean male, int birthdayMonth, int birthdayDay, int birthdayYear, String puestoactual, long[] groupIds, long[] organizationIds, long[] roleIds, long[] userGroupIds, boolean sendEmail, Map<String, String> camposExtras,
			ServiceContext serviceContext) throws DuplicateUserEmailAddressException,
			DuplicateUserDNIException, SystemException, PortalException;

	


}
