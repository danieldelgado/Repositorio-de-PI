package com.rec.registrarusuario.service.test;

import static org.mockito.Matchers.eq;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.util.Date;
import java.util.Locale;

import junit.framework.Assert;

import org.junit.Before;
import org.junit.Test;

import com.liferay.portal.kernel.bean.BeanLocator;
import com.liferay.portal.kernel.bean.PortalBeanLocatorUtil;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.model.User;
import com.liferay.portal.service.ServiceContext;
import com.liferay.portal.service.UserLocalService;
import com.rec.registrarusuario.service.RegistrarUsuarioService;
import com.rec.registrarusuario.service.impl.RegistrarUsuarioServiceImpl;



public class RegistrarUsuarioServiceTest {

	private User usuarioPostulante ;
	private RegistrarUsuarioService registrarUsuarioService;
	private ServiceContext serviceContext;
	private BeanLocator beanLocator;
	private UserLocalService userLocalServiceMock;
	@Before
	public void init(){
		usuarioPostulante = mock(User.class);
		registrarUsuarioService = mock(RegistrarUsuarioServiceImpl.class);
		serviceContext = mock(ServiceContext.class);
		beanLocator = mock(BeanLocator.class);
		userLocalServiceMock = mock(UserLocalService.class);
		System.out.println("init terminado");
		
	}
	
	
//	@SuppressWarnings("static-access")
	@Test
	public void firstMockTest() {
		usuarioPostulante.setFirstName("Danielle");
		usuarioPostulante.setLastName("Delgado");
		User usuarioPostulantetest = null;
		
		try {
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

			
			when( userLocalServiceMock.addUser(creatorUserId, companyId, false, password1, password2, autoScreenName, screenName, emailAddress, facebookId, openId, 
					locale, firstName, middleName, lastName, prefixId, suffixId, male, birthdayMonth, birthdayDay, birthdayYear, jobTitle, 
					groupIds, organizationIds, roleIds, userGroupIds, sendEmail, serviceContext) ).thenReturn(usuarioPostulante);


			when(beanLocator.locate(eq(UserLocalService.class.getName()))).thenReturn(userLocalServiceMock);
			when(beanLocator.getClassLoader()).thenReturn(Thread.currentThread().getContextClassLoader());	
			PortalBeanLocatorUtil.setBeanLocator(beanLocator);
			
			long groupId = 0;
			usuarioPostulantetest = registrarUsuarioService.registrarUsuarioPostulante(companyId, groupId , prefixId, suffixId, "Danielle", "Delgado", 
					"danieldelgado20g@gmail.com", "M", "12345", new Date(), "1234", new Locale("es", "PET"),
					serviceContext);
			
			System.out.println("test add3");
			

			
		} catch (SystemException e) {
			e.printStackTrace();
		} catch (PortalException e) {
			e.printStackTrace();
		}		
		

		System.out.println(usuarioPostulantetest);
//		System.out.println(usuarioPostulantetest.getFullName() );
//		System.out.println(usuarioPostulante.getFullName());
//		Assert.assertEquals(usuarioPostulantetest.getFullName() , usuarioPostulante.getFullName());
//		
	}
	

}
