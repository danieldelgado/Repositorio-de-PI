package com.rec.registrarreclutamiento.controller;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.RenderMapping;

import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;

@Controller
@RequestMapping("VIEW")
public class RegistrarSolicitudReclutamientoController {

	private static Log LOG = LogFactoryUtil.getLog(RegistrarSolicitudReclutamientoController.class);
	
	
	@RenderMapping()
	public String get(RenderRequest request, RenderResponse response, Model model) {
		LOG.debug("Incio");
		
		return "view";
	}
	
	
}
