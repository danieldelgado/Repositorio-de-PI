package com.rec.hook;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletConfig;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;

import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.struts.BaseStrutsPortletAction;
import com.liferay.portal.kernel.struts.StrutsPortletAction;
import com.liferay.portal.model.User;
import com.liferay.portal.util.PortalUtil;

/**
 * @author Danielle Delgado
 */
public class EditUserAction extends BaseStrutsPortletAction {

	private static Log _log = LogFactoryUtil.getLog(EditUserAction.class);

	@Override
	public void processAction(StrutsPortletAction originalStrutsPortletAction, PortletConfig portletConfig, ActionRequest actionRequest, ActionResponse actionResponse)
			throws Exception {
		originalStrutsPortletAction.processAction(portletConfig, actionRequest, actionResponse);
	}

	@Override
	public String render(StrutsPortletAction originalStrutsPortletAction, PortletConfig portletConfig, RenderRequest renderRequest, RenderResponse renderResponse) throws Exception {
		System.out.println("render");
		User user = PortalUtil.getSelectedUser(renderRequest);
		if (user != null) {
			_log.info("Nombre:" + user.getFirstName() + "  Uuidd:" + user.getUuid());
		}
		return originalStrutsPortletAction.render(portletConfig, renderRequest, renderResponse);
	}

	@Override
	public void serveResource(StrutsPortletAction originalStrutsPortletAction, PortletConfig portletConfig, ResourceRequest resourceRequest, ResourceResponse resourceResponse)
			throws Exception {
		originalStrutsPortletAction.serveResource(portletConfig, resourceRequest, resourceResponse);
	}

}