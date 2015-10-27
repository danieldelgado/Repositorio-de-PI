
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

<input id="registrar_usuario_portlet" name="" type="hidden" value="<portlet:namespace/>" />

<portlet:resourceURL var="registrarUsuario" id="registrarUsuario">
	<portlet:param name="" value=""></portlet:param>
</portlet:resourceURL>

<portlet:resourceURL var="validarUsuarioPostulante" id="validarUsuarioPostulante">
	<portlet:param name="" value=""></portlet:param>
</portlet:resourceURL>

<input id="<portlet:namespace/>validarUsuarioPostulante" name="<portlet:namespace/>validarUsuarioPostulante" type="hidden" 	value="${validarUsuarioPostulante}" />
<input id="<portlet:namespace/>registrarUsuario" name="<portlet:namespace/>registrarUsuario" type="hidden" value="${registrarUsuario}" />

<div class="">
	<div class="well bs-component">
		<form id="<portlet:namespace/>fromregistrarUsuario" name="<portlet:namespace/>fromregistrarUsuario" class="form-horizontal" method="post"
			action="${registrarUsuario}">
			<fieldset>
				<legend>
					<%=PortletProps.get("titulo.registrar.usuario")%>
				</legend>

				<div class="form-group">
					<label for="nombre" class="col-lg-2 control-label"><%=PortletProps.get("form.nombre.usuario")%></label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="<portlet:namespace/>nombre_usuario" name="<portlet:namespace/>nombre_usuario"
							placeholder="<%=PortletProps.get("form.nombre.usuario")%>" value="" disabled="disabled">
					</div>
				</div>

				<div class="form-group">
					<label for="nombre" class="col-lg-2 control-label"><%=PortletProps.get("form.nombre")%></label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="<portlet:namespace/>nombre" name="<portlet:namespace/>nombre"
							placeholder="<%=PortletProps.get("form.nombre")%>" value="">
					</div>
					<label class="col-lg-2 control-label validatenombre hide">${campo_validacion_nombre}</label>
				</div>

				<div class="form-group">
					<label for="apellidos" class="col-lg-2 control-label"><%=PortletProps.get("form.apellidos")%></label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="<portlet:namespace/>apellidos" name="<portlet:namespace/>apellidos"
							placeholder="<%=PortletProps.get("form.apellidos")%>" value="">
					</div>
					<label class="col-lg-2 control-label validateapellidos hide">${campo_validacion_apellidos}</label>
				</div>

				<div class="form-group">
					<label for="correo" class="col-lg-2 control-label"><%=PortletProps.get("form.correo")%></label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="<portlet:namespace/>correo" name="<portlet:namespace/>correo"
							placeholder="<%=PortletProps.get("form.correo")%>" value="daniel1234_14@hotmail.com">
					</div>
					<label class="col-lg-2 control-label validatecorreo hide">${campo_validacion_correo}</label>
				</div>

				<div class="form-group">
					<label for="correo" class="col-lg-2 control-label"><%=PortletProps.get("form.puesto.actual")%></label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="<portlet:namespace/>puestoactual" name="<portlet:namespace/>puestoactual"
							placeholder="<%=PortletProps.get("form.puesto.actual")%>" value="Desarrollador web">
					</div>
					<label class="col-lg-2 control-label validatepuesto hide">${campo_validacion_puesto}</label>
				</div>

				<div class="form-group">
					<label class="col-lg-2 control-label"><%=PortletProps.get("form.genero")%></label>
					<div class="col-lg-10">
						<div class="radio">
							<label> <input type="radio" name="<portlet:namespace/>genero" id="<portlet:namespace/>optionsRadios1"
								value="<%=PortletProps.get("form.genero.femenino.value")%>" /> <%=PortletProps.get("form.genero.femenino")%>
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="<portlet:namespace/>genero" id="<portlet:namespace/>optionsRadios2"
								value="<%=PortletProps.get("form.genero.masculino.value")%>" checked="checked"> <%=PortletProps.get("form.genero.masculino")%>
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="dni" class="col-lg-2 control-label"><%=PortletProps.get("form.dni")%></label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="<portlet:namespace/>dni" name="<portlet:namespace/>dni"
							placeholder="<%=PortletProps.get("form.dni")%>" value="98765432">
					</div>
					<label class="col-lg-2 control-label validatedni hide">${campo_validacion_dni}</label>
				</div>
				<div class="form-group">
					<label for="fechanacimiento" class="col-lg-2 control-label"><%=PortletProps.get("form.fecha.nacimiento")%></label>
					<div class="col-lg-10">

						<input type="text" id="<portlet:namespace/>fechanacimiento" class="" data-format="DD-MM-YYYY" data-template="D MMM YYYY"
							name="<portlet:namespace/>fechanacimiento" value="09-01-1985">

					</div>
					<label class="col-lg-2 control-label validatefechanacimiento hide">${campo_validacion_fechanacimiento}</label>
				</div>
				<div class="form-group">
					<label for="password" class="col-lg-2 control-label"><%=PortletProps.get("form.password")%></label>
					<div class="col-lg-10">
						<input type="password" class="form-control" id="<portlet:namespace/>password" name="<portlet:namespace/>password"
							placeholder="<%=PortletProps.get("form.password")%>" value="1234">
					</div>
					<label class="col-lg-2 control-label validatepassword hide">${campo_validacion_password}</label>
				</div>
				<div class="form-group">
					<label for="password2" class="col-lg-2 control-label"><%=PortletProps.get("form.password.res")%></label>
					<div class="col-lg-10">
						<input type="password" class="form-control" id="<portlet:namespace/>password2" name="<portlet:namespace/>password2"
							placeholder="<%=PortletProps.get("form.password.res")%>" value="1234">
					</div>
					<label class="col-lg-2 control-label validatepassword2 hide">${campo_validacion_password2}</label>
				</div>
				<div class="form-group modal-footer">
					<div class="col-xs-12 col-lg-10 col-lg-offset-2">
						<button id="<portlet:namespace/>btnGuardar" type="button" class="btn btn-primary"><%=PortletProps.get("form.label.inscribir")%></button>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>