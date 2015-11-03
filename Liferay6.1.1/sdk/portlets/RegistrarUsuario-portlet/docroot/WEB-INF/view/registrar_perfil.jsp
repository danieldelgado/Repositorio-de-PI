<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.liferay.util.portlet.PortletProps"%>

<portlet:defineObjects />


<input id="registrar_usuario_portlet" name="" type="hidden" value="<portlet:namespace/>" />

<portlet:actionURL var="registrarUsuario">
	<portlet:param name="action" value="registrarUsuario"></portlet:param>
</portlet:actionURL>

<input id="<portlet:namespace/>respuestasServer" name="<portlet:namespace/>registrarUsuario" type="hidden" value='${respuestas}' />
<input id="<portlet:namespace/>user_uuid" name="<portlet:namespace/>user_uuid" type="hidden" value='${user_uuid}' />

<div class="row">

	<div style="text-align: center;">

		<div id="<portlet:namespace/>opcionesperfil" class="btn-group" data-toggle="buttons">
			<label class="btn btn-primary active"> <input type="radio" value="perfil" name="options" id="option1" autocomplete="off" checked> Datos principales
			</label> <label class="btn btn-primary"> <input type="radio" value="concimientos" name="options" id="option2" autocomplete="off"> Conocimientos y Habilidades
			</label> <label class="btn btn-primary"> <input type="radio" value="estudios" name="options" id="option3" autocomplete="off"> Estudios
			</label>
		</div>

	</div>
	<div id="<portlet:namespace/>panelesperfil">
		<div class="perfil  panel panel-primary show">
			<div class="panel-heading">
				<h3 class="panel-title">Datos principales</h3>
			</div>
			<div class="panel-body">
				<div class="media">
					<!-- 					<div class="media-left media-middle"> -->
					<!-- 						<a href="#"> <img class="media-object" -->
					<!-- 							data-src="holder.js/64x64" alt="64x64" -->
					<!-- 							src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIHZpZXdCb3g9IjAgMCA2NCA2NCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvNjR4NjQKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNTBjOGU1MWEyOCB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE1MGM4ZTUxYTI4Ij48cmVjdCB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIGZpbGw9IiNFRUVFRUUiLz48Zz48dGV4dCB4PSIxNC41IiB5PSIzNi41Ij42NHg2NDwvdGV4dD48L2c+PC9nPjwvc3ZnPg==" -->
					<!-- 							data-holder-rendered="true" style="width: 64px; height: 64px;"> -->
					<!-- 						</a> -->
					<!-- 					</div> -->
					<div class="media-body">


						<form id="<portlet:namespace/>fromregistrarUsuario" name="<portlet:namespace/>fromregistrarUsuario" class="form-horizontal" method="post" action="${registrarUsuario}">
							<fieldset>

								<div class="form-group">
									<label for="<portlet:namespace/>nombre_usuario" class="col-lg-2 control-label"><%=PortletProps.get("form.nombre.usuario")%></label>
									<div class="col-lg-10">
										<input type="text" class="form-control" id="<portlet:namespace/>nombre_usuario_mostrar" name="<portlet:namespace/>nombre_usuario_mostrar"
											placeholder="<%=PortletProps.get("form.nombre.usuario")%>" value="${val_usuario}" disabled="disabled">

									</div>

								</div>

								<div class="form-group">
									<label for="<portlet:namespace/>nombre" class="col-lg-2 control-label"><%=PortletProps.get("form.nombre")%></label>
									<div class="col-lg-10">
										<input type="text" class="form-control" id="<portlet:namespace/>nombre" name="<portlet:namespace/>nombre" placeholder="<%=PortletProps.get("form.nombre")%>" value="${val_nombre}">
									</div>
									<label id="<portlet:namespace/>_msg_e_nombre" class="control-label hide col-lg-4">${campo_validacion_nombre}</label>
								</div>

								<div class="form-group">
									<label for="<portlet:namespace/>apellidos" class="col-lg-2 control-label"><%=PortletProps.get("form.apellidos")%></label>
									<div class="col-lg-10">
										<input type="text" class="form-control" id="<portlet:namespace/>apellidos" name="<portlet:namespace/>apellidos" placeholder="<%=PortletProps.get("form.apellidos")%>" value="${val_apellidos}">
									</div>
									<label id="<portlet:namespace/>_msg_e_apellidos" class="control-label hide col-lg-4">${campo_validacion_apellidos}</label>
								</div>

								<div class="form-group">
									<label for="<portlet:namespace/>correo" class="col-lg-2 control-label"><%=PortletProps.get("form.correo")%></label>
									<div class="col-lg-10">
										<input type="text" class="form-control" id="<portlet:namespace/>correo" name="<portlet:namespace/>correo" placeholder="<%=PortletProps.get("form.correo")%>" value="${val_correo}">
									</div>
									<label id="<portlet:namespace/>_msg_e_correo" class="control-label hide col-lg-4">${campo_validacion_correo}</label> <label id="<portlet:namespace/>_msg_e_correo2"
										class="control-label hide col-lg-4">${campo_validacion_correo2}</label>
								</div>

								<div class="form-group">
									<label for="<portlet:namespace/>puestoactual" class="col-lg-2 control-label"><%=PortletProps.get("form.puesto.actual")%></label>
									<div class="col-lg-10">
										<input type="text" class="form-control" id="<portlet:namespace/>puestoactual" name="<portlet:namespace/>puestoactual" placeholder="<%=PortletProps.get("form.puesto.actual")%>"
											value="${val_puestoactual}">
									</div>
									<label id="<portlet:namespace/>_msg_e_puestoactual" class="control-label hide col-lg-4">${campo_validacion_puesto}</label>
								</div>

								<div class="form-group">
									<label class="col-lg-2 control-label"><%=PortletProps.get("form.genero")%></label>
									<div class="col-lg-10">
										<div class="radio">
											<label> <input type="radio" name="<portlet:namespace/>genero" id="<portlet:namespace/>optionsRadios1" value="<%=PortletProps.get("form.genero.femenino.value")%>" /> <%=PortletProps.get("form.genero.femenino")%>
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="<portlet:namespace/>genero" id="<portlet:namespace/>optionsRadios2" value="<%=PortletProps.get("form.genero.masculino.value")%>" checked="checked">
												<%=PortletProps.get("form.genero.masculino")%>
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="dni" class="col-lg-2 control-label"><%=PortletProps.get("form.dni")%></label>
									<div class="col-lg-10">
										<input type="text" class="form-control" id="<portlet:namespace/>dni" name="<portlet:namespace/>dni" placeholder="<%=PortletProps.get("form.dni")%>" value="${val_dni}">
									</div>
									<label id="<portlet:namespace/>_msg_e_dni" class="control-label hide col-lg-4">${campo_validacion_dni}</label> <label id="<portlet:namespace/>_msg_e_dni2" class="control-label hide col-lg-4">${campo_validacion_dni2}</label>
								</div>
								<div class="form-group">
									<label for="fechanacimiento" class="col-lg-2 control-label"><%=PortletProps.get("form.fecha.nacimiento")%></label>
									<div class="col-lg-10">

										<input type="text" id="<portlet:namespace/>fechanacimiento" class="" data-format="DD-MM-YYYY" data-template="D MMM YYYY" name="<portlet:namespace/>fechanacimiento"
											value="${val_fechaNacimiento}">

									</div>
									<label id="<portlet:namespace/>_msg_e_fechanacimiento" class="control-label hide col-lg-4">${campo_validacion_fechanacimiento}</label>
								</div>
								<div class="form-group">
									<label for="password" class="col-lg-2 control-label"><%=PortletProps.get("form.password.new")%></label>
									<div class="col-lg-10">
										<input type="password" class="form-control" id="<portlet:namespace/>password" name="<portlet:namespace/>password" placeholder="<%=PortletProps.get("form.password")%>"
											value="${val_strPassword}">
									</div>
									<label id="<portlet:namespace/>_msg_e_password" class="control-label hide col-lg-4">${campo_validacion_password}</label>
								</div>
								<div class="form-group">
									<label for="password2" class="col-lg-2 control-label"><%=PortletProps.get("form.password.res")%></label>
									<div class="col-lg-10">
										<input type="password" class="form-control" id="<portlet:namespace/>password2" name="<portlet:namespace/>password2" placeholder="<%=PortletProps.get("form.password.res")%>"
											value="${val_strPassword2}">
									</div>
									<label id="<portlet:namespace/>_msg_e_password2" class="control-label hide col-lg-4">${campo_validacion_password2}</label>
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
			</div>
		</div>

		<div class="concimientos panel panel-primary hide">
			<div class="panel-heading">
				<h3 class="panel-title">Conocimientos y Habilidades</h3>
			</div>
			<div class="panel-body">
				<div class="media">
					<!-- 					<div class="media-left media-middle"> -->
					<!-- 						<a href="#"> <img class="media-object" -->
					<!-- 							data-src="holder.js/64x64" alt="64x64" -->
					<!-- 							src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIHZpZXdCb3g9IjAgMCA2NCA2NCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvNjR4NjQKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNTBjOGU1MWEyOCB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE1MGM4ZTUxYTI4Ij48cmVjdCB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIGZpbGw9IiNFRUVFRUUiLz48Zz48dGV4dCB4PSIxNC41IiB5PSIzNi41Ij42NHg2NDwvdGV4dD48L2c+PC9nPjwvc3ZnPg==" -->
					<!-- 							data-holder-rendered="true" style="width: 64px; height: 64px;"> -->
					<!-- 						</a> -->
					<!-- 					</div> -->
					<div class="media-body"></div>
				</div>
			</div>
		</div>

		<div class="estudios panel panel-primary hide">
			<div class="panel-heading">
				<h3 class="panel-title">Estudios</h3>
			</div>
			<div class="panel-body">
				<div class="media">
					<!-- 					<div class="media-left media-middle"> -->
					<!-- 						<a href="#"> <img class="media-object" -->
					<!-- 							data-src="holder.js/64x64" alt="64x64" -->
					<!-- 							src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIHZpZXdCb3g9IjAgMCA2NCA2NCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvNjR4NjQKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNTBjOGU1MWEyOCB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE1MGM4ZTUxYTI4Ij48cmVjdCB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIGZpbGw9IiNFRUVFRUUiLz48Zz48dGV4dCB4PSIxNC41IiB5PSIzNi41Ij42NHg2NDwvdGV4dD48L2c+PC9nPjwvc3ZnPg==" -->
					<!-- 							data-holder-rendered="true" style="width: 64px; height: 64px;"> -->
					<!-- 						</a> -->
					<!-- 					</div> -->
					<div class="media-body"></div>
				</div>
			</div>
		</div>
	</div>

</div>
