package com.rec.hitss.liferay.hook.autologin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.Validator;
import com.liferay.portal.model.Company;
import com.liferay.portal.model.CompanyConstants;
import com.liferay.portal.security.auth.AutoLogin;
import com.liferay.portal.security.auth.AutoLoginException;
import com.liferay.portal.service.UserLocalServiceUtil;
import com.liferay.portal.util.PortalUtil;

/**
 * @author Minhchau Dang
 */
public class ParamCustomAutoLogin implements AutoLogin {

	private static final Log LOG = LogFactoryUtil.getLog(ParamCustomAutoLogin.class);

	public String[] login(HttpServletRequest request, HttpServletResponse response) throws AutoLoginException {		
		try {
			
			String login = ParamUtil.getString(request, getLoginParam());
			LOG.debug("login(): login=" + login);

			if (Validator.isNull(login)) {
				return null;
			}

			String password = ParamUtil.getString(request, getPasswordParam());
			LOG.debug("login(): userPassword:" + password);
			if (Validator.isNull(password)) {
				return null;
			}

			Company company = PortalUtil.getCompany(request);

			String authType = company.getAuthType();
			LOG.debug("login(): authType=" + authType+ "company.getCompanyId()=" + company.getCompanyId());
			long userId = 0;

			if (authType.equals(CompanyConstants.AUTH_TYPE_EA)) {
				userId = UserLocalServiceUtil.authenticateForBasic(company.getCompanyId(),CompanyConstants.AUTH_TYPE_EA, login,password);
			} else if (authType.equals(CompanyConstants.AUTH_TYPE_SN)) {
				userId = UserLocalServiceUtil.authenticateForBasic(company.getCompanyId(),CompanyConstants.AUTH_TYPE_SN, login,password);
			} else if (authType.equals(CompanyConstants.AUTH_TYPE_ID)) {
				userId = UserLocalServiceUtil.authenticateForBasic(company.getCompanyId(),CompanyConstants.AUTH_TYPE_ID, login,password);
			} else {
				return null;
			}
			
			LOG.debug("login(): userId=" + userId);
			String[] credentials = null;
			if (userId > 0) {
				credentials = new String[] { String.valueOf(userId), password, Boolean.FALSE.toString() };
				LOG.debug(" credentials[0] :: " + credentials[0]);
				LOG.debug(" credentials[1] :: " + credentials[1]);
				LOG.debug(" credentials[2] :: " + credentials[2]);				
			}else {
				return null;
			}
			return credentials;
		} catch (Exception e) {
			throw new AutoLoginException(e);
		}
	}

	protected String getLoginParam() {
		return _LOGIN_PARAM;
	}

	protected String getPasswordParam() {
		return _PASSWORD_PARAM;
	}

	private static final String _LOGIN_PARAM = "parameterAutoLoginLogin";

	private static final String _PASSWORD_PARAM = "parameterAutoLoginPassword";

}