package com.rec.registrarusuario.service.test;

import java.util.Date;
import java.util.Locale;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.powermock.api.mockito.PowerMockito;
import org.powermock.core.classloader.annotations.PrepareForTest;
import org.powermock.modules.junit4.legacy.PowerMockRunner;

import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.PropsUtil;
import com.liferay.portal.model.User;
import com.liferay.portal.service.ServiceContext;
import com.rec.registrarusuario.service.RegistrarUsuarioService;
import com.rec.registrarusuario.service.impl.RegistrarUsuarioServiceImpl;


@PrepareForTest(PropsUtil.class)
@RunWith(PowerMockRunner.class)
public class RegistrarUsuarioServiceTest {

	@Test
	public void firstMockTest() {
			
		try {
			
			
			RegistrarUsuarioService registrarUsuarioService = PowerMockito.mock(RegistrarUsuarioServiceImpl.class);
			ServiceContext serviceContext = PowerMockito.mock(ServiceContext.class);
			
			User userMock = Mockito.mock(User.class);
			Mockito.when(userMock.getFullName()).thenReturn("Danielle Delgado");
			
			
			PowerMockito.when(registrarUsuarioService.registrarUsuarioPostulante(0, 0, 0, 0, "Danielle", "Delgado", "danieldelgado20g@gmail.com", "M", "12345", new Date(), "1234", Locale.JAPAN,
					serviceContext)).then(null);
			PowerMockito.when(serviceContext.getUuid()).then(null);
			
			;
		} catch (SystemException e) {
			e.printStackTrace();
		} catch (PortalException e) {
			e.printStackTrace();
		}
		
	}

}
