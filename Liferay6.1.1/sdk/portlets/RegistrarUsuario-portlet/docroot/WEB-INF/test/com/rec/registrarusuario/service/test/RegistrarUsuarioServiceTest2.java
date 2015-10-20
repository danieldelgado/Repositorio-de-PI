package com.rec.registrarusuario.service.test;

import static org.mockito.Mockito.RETURNS_MOCKS;

import java.util.Date;
import java.util.Locale;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.powermock.api.mockito.PowerMockito;
import org.powermock.core.classloader.annotations.PrepareForTest;
import org.powermock.modules.junit4.PowerMockRunner;

import com.liferay.portal.kernel.bean.BeanLocator;
import com.liferay.portal.kernel.bean.PortalBeanLocatorUtil;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.service.ServiceContext;
import com.liferay.portal.service.UserLocalService;
import com.liferay.portal.service.UserLocalServiceUtil;
import com.liferay.util.portlet.PortletProps;
import com.rec.registrarusuario.service.RegistrarUsuarioService;
import com.rec.registrarusuario.service.impl.RegistrarUsuarioServiceImpl;
import com.rec.registrarusuario.util.ConstantesUtil;

@RunWith( PowerMockRunner.class )
@PrepareForTest( PortletProps.class )
public class RegistrarUsuarioServiceTest2  {
	private BeanLocator mockBeanLocator;

	private RegistrarUsuarioService registrarUsuarioService;

	private UserLocalServiceUtil userLocalServiceUtil;
	
	@Before
	public void setUp(){

		PowerMockito.mock( PortletProps.class );
		PowerMockito.when(PortletProps.get("form.genero.femenino.value")).thenReturn("F");
		
		
		mockBeanLocator = PowerMockito.mock( BeanLocator.class );
		
		userLocalServiceUtil = new UserLocalServiceUtil();

		userLocalServiceUtil.setService( PowerMockito.mock(UserLocalService.class , RETURNS_MOCKS));

		userLocalServiceUtil = PowerMockito.mock(UserLocalServiceUtil.class);
		
		PortalBeanLocatorUtil.setBeanLocator(mockBeanLocator);
		
		PowerMockito.when(mockBeanLocator.locate("RegistrarUsuarioService")).thenReturn(new RegistrarUsuarioServiceImpl());
		
	
		
		registrarUsuarioService = (RegistrarUsuarioService) PortalBeanLocatorUtil.locate("RegistrarUsuarioService");
		
		
		
	}

	@Test
	public void test() {			
		
		
		
		
		long creatorUserId = 0;
		long[] groupIds = null;;
		long[] organizationIds = null;
		long[] roleIds = null;
		long[] userGroupIds = null;
		Date dtFechaNacimiento = new Date();
		int birthdayMonth = dtFechaNacimiento .getMonth();
		int birthdayDay = dtFechaNacimiento.getDay();
		int birthdayYear = dtFechaNacimiento.getYear();
		String strNombre = "Danielle";
		String strApep = "Delgado";
		String screenName =strNombre + "  " + strApep;
		long facebookId = 0;
		String openId = "";
		long companyId= 10150L;
		
		
		String password1 = "12345";
		String password2= "12345";
		boolean autoScreenName = true;
		String emailAddress = "danieldelgado20g@gmail.com";
		Locale locale = new Locale("es", "PET");
		String firstName = "Danielle" ;
		String middleName =" ";
		String lastName = "Delgado";
		int prefixId = 0;
		int suffixId = 0;
		boolean male = true;
		String jobTitle = "";
		boolean sendEmail = false;
		ServiceContext serviceContext;
		
		long groupId = 0;
		String strGenero = "M";
		String nroDocumento = "12341234";
	
		try {
			
			registrarUsuarioService.registrarUsuarioPostulante(companyId, groupId, prefixId, suffixId, strNombre, strApep, emailAddress, strGenero , nroDocumento ,
					dtFechaNacimiento, password1, locale, null);
			
		} catch (SystemException e) {
			e.printStackTrace();
		} catch (PortalException e) {
			e.printStackTrace();
		}
		
		

		
		
	}

}
