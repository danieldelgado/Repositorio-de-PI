package com.rec.slider.controller;

import java.util.List;

import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.RenderMapping;

import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.WebKeys;
import com.liferay.portal.theme.ThemeDisplay;
import com.liferay.portal.util.PortalUtil;
import com.rec.slider.bean.Slider;
import com.rec.slider.service.SlideService;

@Controller
@RequestMapping("VIEW")
public class SlideController {

	private static Log LOG = LogFactoryUtil.getLog(SlideController.class);

	@Autowired
	private SlideService slideService;
	
	@RenderMapping()
	public String get(RenderRequest request, RenderResponse response, Model model) {
		LOG.debug("get Incio");		
		System.out.println("get Inicio");
		String limite = request.getPreferences().getValue("limite", "");
		String categorias = request.getPreferences().getValue("categorias", "");
		LOG.debug("limite:"+limite+" categorias:"+categorias);
		ThemeDisplay themeDisplay = (ThemeDisplay) request.getAttribute(WebKeys.THEME_DISPLAY);		
		List<Slider> listaSliders = slideService.getContentSlider(themeDisplay,PortalUtil.getHttpServletRequest(request),PortalUtil.getHttpServletResponse(response),limite,categorias);
		System.out.println("listaSliders");
		System.out.println(listaSliders);
		model.addAttribute("listaSliders", listaSliders);
		return "view";
	}

}