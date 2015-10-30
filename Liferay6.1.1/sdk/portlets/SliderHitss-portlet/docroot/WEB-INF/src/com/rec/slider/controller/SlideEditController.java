package com.rec.slider.controller;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletPreferences;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.ActionMapping;

import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.servlet.SessionErrors;
import com.liferay.portal.kernel.servlet.SessionMessages;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.util.PortalUtil;

@Controller
@RequestMapping("EDIT")
public class SlideEditController {
	static final Log LOG = LogFactoryUtil.getLog(SlideEditController.class);

	@RequestMapping
	protected String defaultView(RenderRequest renderRequest, RenderResponse renderResponse) {
		String limite = renderRequest.getPreferences().getValue("limite", "");
		String categorias = renderRequest.getPreferences().getValue("categorias", "");
		renderRequest.setAttribute("limite", limite);
		renderRequest.setAttribute("categorias", categorias);
		LOG.debug("defaultView limite:"+limite+"   categorias:"+categorias); 
		return "editSlide";

	}

	@ActionMapping
	protected void registro(ActionRequest actionRequest, ActionResponse renderResponse) {

		HttpServletRequest request = PortalUtil.getHttpServletRequest(actionRequest);
		String limite = ParamUtil.getString(request, "limite", "");
		String categorias = ParamUtil.getString(request, "categorias", "");
		try {
			PortletPreferences preferencias = actionRequest.getPreferences();
			preferencias.setValue("limite", limite);
			preferencias.setValue("categorias", categorias);
			LOG.debug("registro limite:"+limite+"   categorias:"+categorias); 
			preferencias.store();
			SessionMessages.add(actionRequest, "successEdit");					
		} catch (Exception e) {
			SessionErrors.add(actionRequest, "errorEdit");
		}
	}

}
