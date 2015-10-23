package com.rec.registrarusuario.service.impl;

import java.util.Locale;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.liferay.portal.DuplicateUserEmailAddressException;
import com.liferay.portal.DuplicateUserScreenNameException;
import com.liferay.portal.kernel.dao.orm.DynamicQuery;
import com.liferay.portal.kernel.dao.orm.DynamicQueryFactoryUtil;
import com.liferay.portal.kernel.dao.orm.PropertyFactoryUtil;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.GetterUtil;
import com.liferay.portal.kernel.util.PortalClassLoaderUtil;
import com.liferay.portal.kernel.workflow.WorkflowConstants;
import com.liferay.portal.model.User;
import com.liferay.portal.service.ClassNameLocalServiceUtil;
import com.liferay.portal.service.RoleLocalServiceUtil;
import com.liferay.portal.service.ServiceContext;
import com.liferay.portal.service.UserLocalServiceUtil;
import com.liferay.portlet.expando.model.ExpandoColumn;
import com.liferay.portlet.expando.model.ExpandoTableConstants;
import com.liferay.portlet.expando.model.ExpandoValue;
import com.liferay.portlet.expando.service.ExpandoColumnLocalServiceUtil;
import com.liferay.portlet.expando.service.ExpandoValueLocalServiceUtil;
import com.rec.hitss.service.util.ConstantesPortalUtil;
import com.rec.hitss.service.util.DuplicateUserDNIException;
import com.rec.registrarusuario.service.RegistrarUsuarioService;
import com.rec.registrarusuario.util.ConstantesUtil;

@Service("RegistrarUsuarioService")
public class RegistrarUsuarioServiceImpl implements RegistrarUsuarioService {

	private static Log LOG = LogFactoryUtil.getLog(RegistrarUsuarioServiceImpl.class);

	@SuppressWarnings("deprecation")
	@Override
	public User registrarUsuarioPostulante(long creatorUserId, long companyId, boolean autoPassword, String password1, String password2, boolean autoScreenName, String screenName,
			String emailAddress, long facebookId, String openId, Locale locale, String firstName, String middleName, String lastName, int prefixId, int suffixId, boolean male,
			int birthdayMonth, int birthdayDay, int birthdayYear, String jobTitle, long[] groupIds, long[] organizationIds, long[] roleIds, long[] userGroupIds, boolean sendEmail,
			Map<String, String> camposExtra, ServiceContext serviceContext) throws DuplicateUserEmailAddressException, SystemException, PortalException, DuplicateUserDNIException {

		LOG.debug("registrarUsuarioPostulante");
		DynamicQuery dynamicQuery = DynamicQueryFactoryUtil.forClass(User.class, PortalClassLoaderUtil.getClassLoader());
		dynamicQuery.add(PropertyFactoryUtil.forName(ConstantesUtil.EMAILADDRESS).eq(emailAddress));
		long userexists = UserLocalServiceUtil.dynamicQueryCount(dynamicQuery);
		LOG.debug("Existe correo : " + userexists);
		if (userexists > ConstantesPortalUtil.CERO) {
			LOG.error("Email Duplicado");
			throw new DuplicateUserEmailAddressException();
		}

		ExpandoColumn column = ExpandoColumnLocalServiceUtil.getDefaultTableColumn(companyId, User.class.getName(), ConstantesUtil.DNI);
		dynamicQuery = DynamicQueryFactoryUtil.forClass(ExpandoValue.class, PortalClassLoaderUtil.getClassLoader())
				.add(PropertyFactoryUtil.forName(ConstantesUtil.COLUMNID).eq(GetterUtil.getLong(column.getColumnId())))
				.add(PropertyFactoryUtil.forName(ConstantesPortalUtil.DATA).eq(camposExtra.get(ConstantesUtil.DNI)))
				.add(PropertyFactoryUtil.forName(ConstantesUtil.CLASSNAMEID).eq(GetterUtil.getLong(ClassNameLocalServiceUtil.getClassNameId(User.class.getName()))));
		long dniExists = ExpandoValueLocalServiceUtil.dynamicQueryCount(dynamicQuery);
		LOG.debug("Existe DNI : " + dniExists);
		if (dniExists > ConstantesPortalUtil.CERO) {
			LOG.error("DNI Duplicado");
			throw new DuplicateUserDNIException();
		}

		dynamicQuery = DynamicQueryFactoryUtil.forClass(User.class, PortalClassLoaderUtil.getClassLoader());
		dynamicQuery.add(PropertyFactoryUtil.forName(ConstantesUtil.SCREENNAME).eq(screenName));
		userexists = UserLocalServiceUtil.dynamicQueryCount(dynamicQuery);
		LOG.debug("Existe Screenname : " + userexists);
		if (dniExists > ConstantesPortalUtil.CERO) {
			LOG.error("Screenname Duplicado");
			throw new DuplicateUserScreenNameException();
		}

		User nuevoPostulante = UserLocalServiceUtil.addUser(creatorUserId, companyId, autoPassword, password1, password2, autoScreenName, screenName, emailAddress, facebookId,
				openId, locale, firstName, middleName, lastName, prefixId, suffixId, male, birthdayMonth, birthdayDay, birthdayYear, jobTitle, groupIds, organizationIds, null,
				userGroupIds, sendEmail, serviceContext);

		ExpandoValueLocalServiceUtil.addValue(User.class.getName(), ExpandoTableConstants.DEFAULT_TABLE_NAME, ConstantesUtil.DNI, nuevoPostulante.getUserId(),
				camposExtra.get(ConstantesUtil.DNI));

		LOG.debug("Postulante registrado al rol:" + roleIds);

		RoleLocalServiceUtil.setUserRoles(nuevoPostulante.getUserId(), roleIds);
		
		nuevoPostulante.setStatus(WorkflowConstants.STATUS_APPROVED);
		
		UserLocalServiceUtil.updateUser(nuevoPostulante);

		LOG.debug("Nuevo usuario postulante registrado");

		return nuevoPostulante;

	}

	@Override
	public int validarUsuarioNuevoPostulante(String usuario_postulante) throws SystemException {		
		DynamicQuery dynamicQuery = DynamicQueryFactoryUtil.forClass(User.class, PortalClassLoaderUtil.getClassLoader());
		dynamicQuery.add(PropertyFactoryUtil.forName(ConstantesUtil.SCREENNAME).eq(usuario_postulante));
		long userexists = UserLocalServiceUtil.dynamicQueryCount(dynamicQuery);
		LOG.debug("Existe Screenname : " + userexists);		
		return Long.valueOf(userexists).intValue();
	}

	
}
