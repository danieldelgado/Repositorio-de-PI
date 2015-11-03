package com.rec.hitss.liferay.hook.autologin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.GetterUtil;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.Validator;
import com.liferay.portal.model.Company;
import com.liferay.portal.model.CompanyConstants;
import com.liferay.portal.model.User;
import com.liferay.portal.security.auth.AutoLogin;
import com.liferay.portal.security.auth.AutoLoginException;
import com.liferay.portal.service.UserLocalServiceUtil;
import com.liferay.portal.util.PortalUtil;
import com.liferay.util.Encryptor;

/**
 * @author Minhchau Dang
 */
public class ParamCustomAutoLogin implements AutoLogin {

	private static final Log LOG = LogFactoryUtil.getLog(ParamCustomAutoLogin.class);

	public String[] login(HttpServletRequest request, HttpServletResponse response) throws AutoLoginException {
		LOG.info("login(): entered");
		try {
			String login = ParamUtil.getString(request, getLoginParam());
			LOG.info("login(): login=" + login);

			if (Validator.isNull(login)) {
				return null;
			}

			String password = ParamUtil.getString(request, getPasswordParam());

			if (Validator.isNull(password)) {
				return null;
			}

			Company company = PortalUtil.getCompany(request);

			String authType = company.getAuthType();
			LOG.info("login(): authType=" + authType);
			long userId = 0;

			if (authType.equals(CompanyConstants.AUTH_TYPE_EA)) {
				userId = UserLocalServiceUtil.getUserIdByEmailAddress(company.getCompanyId(), login);
			} else if (authType.equals(CompanyConstants.AUTH_TYPE_SN)) {
				userId = UserLocalServiceUtil.getUserIdByScreenName(company.getCompanyId(), login);
			} else if (authType.equals(CompanyConstants.AUTH_TYPE_ID)) {
				userId = GetterUtil.getLong(login);
			} else {
				return null;
			}
			LOG.info("login(): userId=" + userId);

			if (userId > 0) {
				User user = UserLocalServiceUtil.getUserById(userId);

				String userPassword = user.getPassword();
				LOG.info("login(): userPassword:" + userPassword);
				if (!user.isPasswordEncrypted()) {
					userPassword = Encryptor.encrypt(company.getKeyObj(), userPassword);
				}

				String encPassword = Encryptor.encrypt(company.getKeyObj(), password);
				LOG.info("login(): encPassword:" + encPassword);

				LOG.info("login(): password:" + password);

				if (!userPassword.equals(password) && !userPassword.equals(encPassword)) {

					return null;
				}
			}

			String[] credentials = new String[] { String.valueOf(userId), password, Boolean.FALSE.toString() };
	        System.out.println(" credentials[0] :: " + credentials[0]);
	        System.out.println(" credentials[1] :: " + credentials[1]);
	        System.out.println(" credentials[2] :: " + credentials[2]);

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