package com.rec.registrarusuario.service.impl;

import java.util.Date;
import java.util.Locale;

import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

import org.springframework.stereotype.Service;

import com.liferay.mail.service.MailServiceUtil;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.mail.MailMessage;
import com.liferay.portal.kernel.util.StringUtil;
import com.liferay.portal.model.User;
import com.liferay.portal.service.ServiceContext;
import com.liferay.portal.service.UserLocalServiceUtil;
import com.liferay.util.ContentUtil;
import com.liferay.util.portlet.PortletProps;
import com.rec.registrarusuario.service.RegistrarUsuarioService;

@Service("RegistrarUsuarioService")
public class RegistrarUsuarioServiceImpl implements RegistrarUsuarioService {

	@Override
	public User registrarUsuarioPostulante(long companyId, long groupId, int prefixId, int suffixId, String strNombre, String strApep, String strEmail, String strGenero,
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

		User u = UserLocalServiceUtil.addUser(iduser, companyId, true, strPassword, strPassword, true, screenName, strEmail, facebookId, openId, locale, strNombre, " ", strApep,
				prefixId, suffixId, genero, birthdayMonth, birthdayDay, birthdayYear, strNombre + " " + strApep, groupIds, organizationIds, roleIds, userGroupIds, false,
				serviceContext);

		try {
			InternetAddress fromAddress = new InternetAddress("danieldelgadog20g@gmail.com");// from
			InternetAddress toAddress = new InternetAddress("u201317471@upc.edu.pe");// to

			String body = ContentUtil.get("/templates/sample.tmpl", true);
			String subject = "subject"; // email subject

			body = StringUtil.replace(body, new String[] { "[$NAME$]", "[$DESC$]" }, new String[] { "Name", "Description" }); // replacing
																																// the
																																// body
																																// with
																																// our
																																// content.

			MailMessage mailMessage = new MailMessage();
			mailMessage.setTo(toAddress);
			mailMessage.setFrom(fromAddress);
			mailMessage.setSubject(subject);
			mailMessage.setBody(body);
			mailMessage.setHTMLFormat(true);

			MailServiceUtil.sendEmail(mailMessage);
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return u;

	}
}
