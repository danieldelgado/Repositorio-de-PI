
<%
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
	http: //liferay-blogging.blogspot.com/2011/11/how-to-find-out-on-which-page-your-web.html
%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.liferay.util.portlet.PortletProps"%>

<portlet:defineObjects />

<portlet:actionURL var="registrarUsuario" name="registrarUsuario">
	<portlet:param name="" value=""></portlet:param>
</portlet:actionURL>

<input id="" name="" type="hidden" value="<portlet:namespace/>" />

<div class="">
	<div class="well bs-component">
		<form id="<portlet:namespace/>FromregistrarUsuario"
			name="<portlet:namespace/>FromregistrarUsuario"
			class="form-horizontal" method="post" action="${registrarUsuario}">
			<fieldset>
				<legend>
					<%=PortletProps.get("titulo.registrar.usuario")%>
				</legend>
				<div class="form-group">
					<label for="nombre" class="col-lg-2 control-label"><%=PortletProps.get("form.nombre")%></label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="<portlet:namespace/>nombre" name="<portlet:namespace/>nombre"
							placeholder="<%=PortletProps.get("form.nombre")%>">
					</div>
				</div>
				<div class="form-group">
					<label for="apellidos" class="col-lg-2 control-label"><%=PortletProps.get("form.apellidos")%></label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="<portlet:namespace/>apellidos"
							name="<portlet:namespace/>apellidos"
							placeholder="<%=PortletProps.get("form.apellidos")%>">
					</div>
				</div>

				<div class="form-group">
					<label for="correo" class="col-lg-2 control-label"><%=PortletProps.get("form.correo")%></label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="<portlet:namespace/>correo" name="<portlet:namespace/>correo"
							placeholder="<%=PortletProps.get("form.correo")%>">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label"><%=PortletProps.get("form.genero")%></label>
					<div class="col-lg-10">
						<div class="radio">
							<label> <input type="radio" name="<portlet:namespace/>optionsRadios"
								id="<portlet:namespace/>optionsRadios1"
								value="<%=PortletProps.get("form.genero.femenino")%>" /> <%=PortletProps.get("form.genero.femenino")%>
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="<portlet:namespace/>optionsRadios"
								id="<portlet:namespace/>optionsRadios2"
								value="<%=PortletProps.get("form.genero.masculino")%>">
								<%=PortletProps.get("form.genero.masculino")%>
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="dni" class="col-lg-2 control-label"><%=PortletProps.get("form.dni")%></label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="<portlet:namespace/>dni" name="<portlet:namespace/>dni"
							placeholder="<%=PortletProps.get("form.dni")%>">
					</div>
				</div>
				<div class="form-group">
					<label for="fechanacimiento" class="col-lg-2 control-label"><%=PortletProps.get("form.fecha.nacimiento")%></label>
					<div class="col-lg-10">
						<input type="hidden" class="form-control" id="<portlet:namespace/>fechanacimiento"
							name="<portlet:namespace/>fechanacimiento"
							placeholder="<%=PortletProps.get("form.fecha.nacimiento")%>">
						<div class="btn-group btn-group-justified" role="group">
							<div class="btn-group fechadia">
								<a aria-expanded="true" href="#"
									class="btn btn-default dropdown-toggle" data-toggle="dropdown">
									<%=PortletProps.get("form.fecha.nacimiento.dia")%> <span
									class="caret"></span>
								</a>
								<ul class="dropdown-menu"
									style="overflow-y: auto; max-height: 300px;">
									<c:forEach var="i" begin="1" end="31">
										<li><a href="javascript:;"><c:out value="${i}" /></a></li>
										<p>
									</c:forEach>
								</ul>
							</div>
							<div class="btn-group fechames">
								<a aria-expanded="true" href="#"
									class="btn btn-default dropdown-toggle" data-toggle="dropdown">
									<%=PortletProps.get("form.fecha.nacimiento.mes")%> <span
									class="caret"></span>
								</a>
								<ul class="dropdown-menu"
									style="overflow-y: auto; max-height: 300px;">
									<c:forEach var="i" begin="1" end="12">
										<li><a href="javascript:;"><c:out value="${i}" /></a></li>
										<p>
									</c:forEach>
								</ul>
							</div>
							<div class="btn-group fechaanno">
								<a aria-expanded="true" href="#"
									class="btn btn-default dropdown-toggle" data-toggle="dropdown">
									<%=PortletProps.get("form.fecha.nacimiento.anno")%> <span
									class="caret"></span>
								</a>
								<ul class="dropdown-menu"
									style="overflow-y: auto; max-height: 300px;">
									<c:forEach var="i" begin="1970" end="2030">
										<li><a href="javascript:;"><c:out value="${i}" /></a></li>
										<p>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="col-lg-2 control-label"><%=PortletProps.get("form.password")%></label>
					<div class="col-lg-10">
						<input type="password" class="form-control" id="<portlet:namespace/>password"
							name="<portlet:namespace/>password"
							placeholder="<%=PortletProps.get("form.password")%>">
					</div>
				</div>
				<div class="form-group modal-footer">
					<div class="col-lg-10 col-lg-offset-2">
						<button type="submit" class="btn btn-primary"><%=PortletProps.get("form.label.inscribir")%></button>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>