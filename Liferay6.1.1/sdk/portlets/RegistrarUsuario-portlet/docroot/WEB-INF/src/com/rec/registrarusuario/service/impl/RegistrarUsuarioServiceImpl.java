package com.rec.registrarusuario.service.impl;

import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Service;

import com.liferay.counter.service.CounterLocalServiceUtil;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.model.User;
import com.liferay.portal.service.ServiceContext;
import com.liferay.portal.service.UserLocalServiceUtil;
import com.liferay.util.portlet.PortletProps;
import com.rec.registrarusuario.service.RegistrarUsuarioService;

@Service("RegistrarUsuarioService")
public class RegistrarUsuarioServiceImpl implements RegistrarUsuarioService {

	@Override
	public User registrarUsuarioPostulante(long companyId, long groupId, int prefixId, int suffixId, String strNombre, String strApep, 
			String strEmail, String strGenero,
			String nroDocumento, Date dtFechaNacimiento, String strPassword, Locale locale, ServiceContext serviceContext) throws SystemException, PortalException {

		// String greeting = "Welcome " + role.getName();
		long iduser = 0;
		boolean genero = (strGenero.trim().equals(PortletProps.get("form.genero.femenino.value")) ? false : true);
		long[] groupIds = null;
		long[] organizationIds = null;
		long[] roleIds = null;
		long[] userGroupIds = null;
		int birthdayMonth = dtFechaNacimiento.getMonth();
		int birthdayDay = dtFechaNacimiento.getDay();
		int birthdayYear = dtFechaNacimiento.getYear();
		String screenName = "";
		long facebookId = 0;
		String openId = "";

		return UserLocalServiceUtil.addUser(iduser, companyId, true, strPassword, strPassword, true, screenName,
				strEmail, facebookId, openId, locale, strNombre, " " ,
				strApep, prefixId, suffixId, genero, birthdayMonth, birthdayDay, birthdayYear, strNombre + " " + strApep, groupIds, 
				organizationIds, roleIds, userGroupIds, true, serviceContext);

	}
}
