package com.rec.registrarusuario.service.test;

//import static org.junit.Assert.assertEquals;
//import static org.powermock.api.mockito.PowerMockito.when;
//
//import java.util.List;
//
//import org.junit.Before;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.powermock.api.mockito.PowerMockito;
//import org.powermock.core.classloader.annotations.PrepareForTest;
//import org.powermock.modules.junit4.PowerMockRunner;
//import org.springframework.mock.web.MockHttpServletRequest;
//import org.springframework.mock.web.MockHttpServletResponse;
//
//import com.liferay.portal.kernel.bean.BeanLocator;
//import com.liferay.portal.kernel.bean.PortalBeanLocatorUtil;
//import com.liferay.portal.kernel.dao.orm.DynamicQueryFactory;
//import com.liferay.portal.kernel.dao.orm.DynamicQueryFactoryUtil;
//import com.liferay.portal.kernel.exception.SystemException;
//import com.liferay.portal.kernel.servlet.HttpMethods;
//import com.liferay.portal.kernel.util.StringPool;
//import com.liferay.portal.service.UserLocalServiceUtil;
//import com.luxitec.slide.bean.Slider;
//import com.luxitec.slide.service.SlideService;
//import com.luxitec.slide.service.impl.SlideServiceImpl;
//import static org.mockito.Mockito.*;
//@RunWith(PowerMockRunner.class)
//@PrepareForTest(UserLocalServiceUtil.class)
//public class SlideServiceTest {
//
//    private BeanLocator mockBeanLocator;
//    private SlideService slideService;
////  private DynamicQuery query;
//    private DynamicQueryFactoryUtil dynamicQueryFactoryUtil;
//    
//
//    @Before
//    public void setUp() throws Exception {
//            // Mock
//            
//            mockBeanLocator = PowerMockito.mock(BeanLocator.class);
//            dynamicQueryFactoryUtil = new DynamicQueryFactoryUtil();
//            dynamicQueryFactoryUtil.setDynamicQueryFactory(mock(DynamicQueryFactory.class, RETURNS_MOCKS));
////          dynamicQueryFactoryUtil = PowerMockito.mock(DynamicQueryFactoryUtil.class);
////          query = PowerMockito.mock(DynamicQuery.class);
//            PortalBeanLocatorUtil.setBeanLocator(mockBeanLocator);
//            when(mockBeanLocator.locate("SlideService")).thenReturn(new SlideServiceImpl());
//            //when(dynamicQueryFactoryUtil.forClass(AssetEntry.class).add(PropertyFactoryUtil.forName("name").eq("My Vocabulary")).list()).thenReturn(new ArrayList<Slider>());
//            
//            slideService = (SlideService) PortalBeanLocatorUtil.locate("SlideService");
//
//    }
//
//    @Test
//    public void test() {
//
//            try {
//                    MockHttpServletRequest mockHttpServletRequest = new MockHttpServletRequest();
//
//                    mockHttpServletRequest.setMethod(HttpMethods.GET);
//
//                    MockHttpServletResponse mockHttpServletResponse = new MockHttpServletResponse();
//                    mockHttpServletResponse.setCharacterEncoding(StringPool.UTF8);
//
//                    List<Slider> content = slideService.getContentSlider(mockHttpServletRequest, mockHttpServletResponse);
//                    System.out.println(content);
////                  PowerMockito.mockStatic(UserLocalServiceUtil.class);
//                    when(UserLocalServiceUtil.getUsersCount()).thenReturn(5);
//                    assertEquals(5, UserLocalServiceUtil.getUsersCount());
//            } catch (SystemException e) {
//                    e.printStackTrace();
//            }
//
//    }
//}