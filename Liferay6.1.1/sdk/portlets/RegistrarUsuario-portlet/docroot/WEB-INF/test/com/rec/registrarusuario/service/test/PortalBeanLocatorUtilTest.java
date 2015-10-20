package com.rec.registrarusuario.service.test;

import com.liferay.portal.kernel.bean.BeanLocator;
import com.liferay.portal.kernel.bean.BeanLocatorException;
import com.liferay.portal.kernel.bean.PortalBeanLocatorUtil;

import org.junit.After;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;

import org.mockito.Mock;
import org.mockito.Mockito;

import org.powermock.api.mockito.PowerMockito;
import org.powermock.modules.junit4.PowerMockRunner;

/**
* @author Miguel Pastor
*/
@RunWith(PowerMockRunner.class)
public class PortalBeanLocatorUtilTest extends PowerMockito {

    @Test
    public void testBeanLocatorHasNotBeenSet() {
            try {
                    PortalBeanLocatorUtil.locate("beanName");
            } catch (BeanLocatorException ble) {
                    Assert.assertTrue(true);
                    return;
            }

            Assert.fail("No bean locator should be inyected");
    }

    @Test
    public void testLocateExistingBean() {
            when(_beanLocator.locate("existingBean")).thenReturn(new String("existingBean"));

            PortalBeanLocatorUtil.setBeanLocator(_beanLocator);

            String bean = (String) PortalBeanLocatorUtil.locate("existingBean");

            Assert.assertNotNull(bean);
            Assert.assertEquals("existingBean", bean);

            Mockito.verify(_beanLocator, Mockito.times(1));
    }

    @Test
    public void testLocateNonExistingBean() {
            when(_beanLocator.locate("nonExistingBean")).thenReturn(null);

            PortalBeanLocatorUtil.setBeanLocator(_beanLocator);

            String bean = (String) PortalBeanLocatorUtil.locate("nonExistingBean");

            Assert.assertNull(bean);

            Mockito.verify(_beanLocator, Mockito.times(1));
    }

    @After
    public void unsetBeanLocator() {
            PortalBeanLocatorUtil.setBeanLocator(null);
    }

    @Mock
    private BeanLocator _beanLocator;

}