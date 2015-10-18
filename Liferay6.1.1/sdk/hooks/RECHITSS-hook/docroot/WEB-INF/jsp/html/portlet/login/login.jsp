<%--
/**
 * Copyright (c) 2000-2012 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ include file="/html/portlet/login/init.jsp"%>

<c:choose>
	<c:when test="<%=themeDisplay.isSignedIn()%>">

		<%
			String signedInAs = HtmlUtil.escape(user.getFullName());
					if (themeDisplay.isShowMyAccountIcon()) {
						signedInAs = "<a href=\"" + HtmlUtil.escape(themeDisplay.getURLMyAccount().toString()) + "\">" + signedInAs + "</a>";
					}
					String src_img = themeDisplay.getUser().getPortraitURL(themeDisplay);
		%>
		<img alt="<%=HtmlUtil.escape(user.getFullName())%>" class="avatar"
			src="<%=src_img%>" />
		<%=LanguageUtil.format(pageContext, "you-are-signed-in-as-x", signedInAs, false)%>

	</c:when>
	<c:otherwise>

		<%
			String redirect = ParamUtil.getString(request, "redirect");

					String login = LoginUtil.getLogin(request, "login", company);
					String password = StringPool.BLANK;
					boolean rememberMe = ParamUtil.getBoolean(request, "rememberMe");

					if (Validator.isNull(authType)) {
						authType = company.getAuthType();
					}
		%>

		<portlet:actionURL
			secure="<%=PropsValues.COMPANY_SECURITY_AUTH_REQUIRES_HTTPS || request.isSecure()%>"
			var="loginURL">
			<portlet:param name="saveLastPath" value="0" />
			<portlet:param name="struts_action" value="/login/login" />
			<%-- 			<portlet:param name="doActionAfterLogin" value="<%= portletName.equals(PortletKeys.FAST_LOGIN) ? Boolean.TRUE.toString() : Boolean.FALSE.toString() %>" /> --%>
		</portlet:actionURL>

		<aui:form action="<%=loginURL%>"
			autocomplete='<%=PropsValues.COMPANY_SECURITY_LOGIN_FORM_AUTOCOMPLETE ? "on" : "off"%>'
			method="post" name="fm" cssClass="form col-md-12 center-block">
			<aui:input name="redirect" type="hidden" value="<%=redirect%>" />

			<%
				String portletId = portletDisplay.getPortletName();
			%>





			<aui:fieldset>

				<%
					String loginLabel = null;

									if (authType.equals(CompanyConstants.AUTH_TYPE_EA)) {
										loginLabel = "email-address";
									} else if (authType.equals(CompanyConstants.AUTH_TYPE_SN)) {
										loginLabel = "screen-name";
									} else if (authType.equals(CompanyConstants.AUTH_TYPE_ID)) {
										loginLabel = "id";
									}
				%>

				<div class="form-group">
					<input id="login" name="login" type="text"
						class="form-control input-lg" placeholder="Email" />
				</div>
				<div class="form-group">
					<input name="password" id="password" type="password"
						class="form-control input-lg" placeholder="Password"
						autocomplete="off" />
				</div>





				<span id="<portlet:namespace />passwordCapsLockSpan"
					style="display: none;"><liferay-ui:message
						key="caps-lock-is-on" /></span>

				<portlet:renderURL var="forgotPasswordURL" windowState="maximized">
					<portlet:param name="struts_action" value="/login/forgot_password" />
				</portlet:renderURL>

				<div class="form-group">
					<div class="container-fluid">	
						<div class="row">
							<div class="col-md-8">
								<a href="<%=forgotPasswordURL%>">&iquest;Olvidaste tu
									contrase&nacute;a?</a><br>
							</div>
							<div class="col-md-4">
								<c:if
									test="<%=company.isAutoLogin() && !PropsValues.SESSION_DISABLED%>">
									<c:choose>
										<c:when test="<%=rememberMe%>">
											<input name="rememberMe" type="checkbox" checked />
										</c:when>
										<c:otherwise>
											<input name="rememberMe" type="checkbox" />
										</c:otherwise>
									</c:choose>
									<label for="">Recordarme</label>						
								</c:if>
							</div>
							
						</div>
					</div>
				</div>

				<div class="form-group">
					<input type="submit" class="btn btn-primary btn-lg btn-block" value="<liferay-ui:message key="sign-in" />" />
				</div>
			</aui:fieldset>
		</aui:form>

	</c:otherwise>
</c:choose>