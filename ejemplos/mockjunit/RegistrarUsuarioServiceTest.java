package com.rec.registrarusuario.service.test;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.util.Date;
import java.util.Locale;

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
import com.liferay.portal.service.UserLocalServiceUtil;
import com.rec.registrarusuario.service.RegistrarUsuarioService;
import com.rec.registrarusuario.service.impl.RegistrarUsuarioServiceImpl;

@RunWith(PowerMockRunner.class)
public class RegistrarUsuarioServiceTest {
	// private BeanLocator mockBeanLocator;
	//
	// private RegistrarUsuarioService registrarUsuarioService;
	//
	// private UserLocalServiceUtil userLocalServiceUtil;
	//
	// private ServiceContext serviceContext;
	//
	// private User usuarioPostulante;

	@Before
	public void setUp() {

		// usuarioPostulante = mock(User.class);
		//
		// mockBeanLocator = PowerMockito.mock(BeanLocator.class);
		//
		// userLocalServiceUtil = new UserLocalServiceUtil();
		//
		// userLocalServiceUtil.setService(PowerMockito.mock(UserLocalService.class,
		// Mockito.RETURNS_MOCKS));
		//
		// userLocalServiceUtil = PowerMockito.mock(UserLocalServiceUtil.class);
		//
		// serviceContext = mock(ServiceContext.class);
		//
		// PortalBeanLocatorUtil.setBeanLocator(mockBeanLocator);
		//
		// PowerMockito.when(mockBeanLocator.locate("RegistrarUsuarioService")).thenReturn(new
		// RegistrarUsuarioServiceImpl());
		//
		// registrarUsuarioService = (RegistrarUsuarioService)
		// PortalBeanLocatorUtil.locate("RegistrarUsuarioService");

	}

	@Test
	public void test() {

		long creatorUserId = 0;
		long[] groupIds = { 1103L };
		long[] organizationIds = { 1104L };
		long[] roleIds = { 1105L };
		long[] userGroupIds = { 1106L };
		Date dtFechaNacimiento = new Date();
		int birthdayMonth = dtFechaNacimiento.getMonth();
		int birthdayDay = dtFechaNacimiento.getDay();
		int birthdayYear = dtFechaNacimiento.getYear();
		String strNombre = "Danielle";
		String strApep = "Delgado";
		String screenName = strNombre + "  " + strApep;
		long facebookId = 0;
		String openId = "";
		long companyId = 10150L;

		String password1 = "12345";
		String password2 = "12345";
		boolean autoScreenName = true;
		String emailAddress = "danieldelgado20g@gmail.com";
		Locale locale = new Locale("es", "PET");
		String firstName = "Danielle";
		String middleName = " ";
		String lastName = "Delgado";
		int prefixId = 0;
		int suffixId = 0;
		boolean male = true;
		String jobTitle = "";
		boolean sendEmail = false;

		long groupId = 0;
		String strGenero = "M";
		String nroDocumento = "12341234";

		boolean autoPassword = false;

		try {
			ServiceContext serviceContext = mock(ServiceContext.class);
			User usuarioPostulante = mock(User.class);
			usuarioPostulante.setFirstName("Danielle");
			usuarioPostulante.setLastName("Delgado");
			Mockito.when(usuarioPostulante.getFullName()).thenReturn("Danielle Delgado");
			UserLocalService userLocalServiceMock = Mockito.mock(UserLocalService.class);
			BeanLocator beanLocator = Mockito.mock(BeanLocator.class);
			Mockito.when(beanLocator.locate(Mockito.eq(UserLocalService.class.getName()))).thenReturn(userLocalServiceMock);
			Mockito.when(beanLocator.getClassLoader()).thenReturn(Thread.currentThread().getContextClassLoader());

			PowerMockito.when(
					userLocalServiceMock.addUser(creatorUserId, companyId, false, password1, password2, autoScreenName, screenName, emailAddress, facebookId, openId, locale,
							firstName, middleName, lastName, prefixId, suffixId, male, birthdayMonth, birthdayDay, birthdayYear, jobTitle, groupIds, organizationIds, roleIds,
							userGroupIds, sendEmail, serviceContext)).thenReturn(usuarioPostulante);

			PortalBeanLocatorUtil.setBeanLocator(beanLocator);
			PowerMockito.when(beanLocator.locate("RegistrarUsuarioService")).thenReturn(new RegistrarUsuarioServiceImpl());

			RegistrarUsuarioService registrarUsuarioService = (RegistrarUsuarioService) PortalBeanLocatorUtil.locate("RegistrarUsuarioService");

			registrarUsuarioService.registrarUsuarioPostulante(creatorUserId, companyId, autoPassword, password1, password2, autoScreenName, screenName, emailAddress, facebookId,
					openId, locale, firstName, middleName, lastName, prefixId, suffixId, male, birthdayMonth, birthdayDay, birthdayYear, jobTitle, groupIds, organizationIds,
					roleIds, userGroupIds, sendEmail, null , serviceContext);

		} catch (SystemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (PortalException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
