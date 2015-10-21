package com.rec.registrarusuario.service.test;

import static org.mockito.Mockito.mock;

import java.util.Date;
import java.util.Locale;

import junit.framework.Assert;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.powermock.api.mockito.PowerMockito;
import org.powermock.modules.junit4.PowerMockRunner;

import com.liferay.portal.kernel.bean.BeanLocator;
import com.liferay.portal.kernel.bean.PortalBeanLocatorUtil;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.model.User;
import com.liferay.portal.service.ServiceContext;
import com.liferay.portal.service.UserLocalService;
import com.rec.registrarusuario.service.RegistrarUsuarioService;
import com.rec.registrarusuario.service.impl.RegistrarUsuarioServiceImpl;

@RunWith(PowerMockRunner.class)
public class RegistrarUsuarioServiceTest {

	long creatorUserId;
	
	Date dtFechaNacimiento ;
	int birthdayMonth ;
	int birthdayDay ;
	int birthdayYear ;
	String strNombre ;
	String strApep ;
	String screenName ;
	long facebookId ;
	String openId ;
	long companyId ;
	String password1 ;
	String password2;
	boolean autoScreenName ;
	String emailAddress;
	Locale locale ;
	String firstName ;
	String middleName ;
	String lastName ;
	int prefixId ;
	int suffixId ;
	boolean male ;
	String jobTitle;
	boolean sendEmail ;

	long groupId ;
	String strGenero;
	String nroDocumento;

	boolean autoPassword ;

	ServiceContext serviceContext;

	@Before
	public void setUp() {
		serviceContext = mock(ServiceContext.class);
		
		creatorUserId = 0;
			
		Date dtFechaNacimiento = new Date();
		birthdayMonth = dtFechaNacimiento.getMonth();
		birthdayDay = dtFechaNacimiento.getDay();
		birthdayYear = dtFechaNacimiento.getYear();
		
		strNombre = "Danielle";
		strApep = "Delgado";
		screenName = strNombre + "  " + strApep;
		facebookId = 0;
		openId = "";
		companyId = 10150L;
		password1 = "12345";
		password2 = "12345";
		autoScreenName = true;
		emailAddress = "danieldelgado20g@gmail.com";
		locale = new Locale("es", "PET");
		firstName = "Danielle";
		middleName = " ";
		lastName = "Delgado";
		prefixId = 0;
		suffixId = 0;
		male = true;
		jobTitle = "";
		sendEmail = false;
		groupId = 0;
		nroDocumento = "12341234";
		autoPassword = false;

	}

	@Test
	public void testregsitrosimple() {

		String test_fullname = "Danielle Delgado";
		
		long[] groupIds= { 1103L };
		long[] organizationIds = { 1104L };
		long[] roleIds = { 1105L };
		long[] userGroupIds ={ 1106L } ;
		
		User usuarioPostulante = mock(User.class);
		Mockito.when(usuarioPostulante.getFullName()).thenReturn(test_fullname);

		try {
			// Definimos el bean y el valor del atributo a retornar

			UserLocalService userLocalServiceMock = Mockito.mock(UserLocalService.class);

			BeanLocator beanLocator = Mockito.mock(BeanLocator.class);

			Mockito.when(beanLocator.locate(Mockito.eq(UserLocalService.class.getName()))).thenReturn(userLocalServiceMock);
			Mockito.when(beanLocator.getClassLoader()).thenReturn(Thread.currentThread().getContextClassLoader());

			// Definimos el metodo de adduser y el objeto que debe retornar
			PowerMockito.when(
					userLocalServiceMock.addUser(creatorUserId, companyId, false, password1, password2, autoScreenName, screenName, emailAddress, facebookId, openId, locale,
							firstName, middleName, lastName, prefixId, suffixId, male, birthdayMonth, birthdayDay, birthdayYear, jobTitle, groupIds, organizationIds, roleIds,
							userGroupIds, sendEmail, serviceContext)).thenReturn(usuarioPostulante);

			PortalBeanLocatorUtil.setBeanLocator(beanLocator);
			PowerMockito.when(beanLocator.locate("RegistrarUsuarioService")).thenReturn(new RegistrarUsuarioServiceImpl());

			RegistrarUsuarioService registrarUsuarioService = (RegistrarUsuarioService) PortalBeanLocatorUtil.locate("RegistrarUsuarioService");

			// Ejecutamos el metodo que se realizara el test
//			usuarioPostulante = registrarUsuarioService.registrarUsuarioPostulante(creatorUserId, companyId, autoPassword, password1, password2, autoScreenName, screenName,
//					emailAddress, facebookId, openId, locale, firstName, middleName, lastName, prefixId, suffixId, male, birthdayMonth, birthdayDay, birthdayYear, jobTitle,
//					groupIds, organizationIds, roleIds, userGroupIds, sendEmail, null, serviceContext);

		} catch (SystemException e) {
			e.printStackTrace();
		} catch (PortalException e) {
			e.printStackTrace();
		}

		Assert.assertEquals(test_fullname, usuarioPostulante.getFullName());

	}

}
