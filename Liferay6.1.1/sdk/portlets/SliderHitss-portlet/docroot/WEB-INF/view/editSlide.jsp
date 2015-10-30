<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui"%>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui"%>


<portlet:defineObjects />
<br>
<br>
<br>
<div>
	<portlet:actionURL var="registro"/>
	<form action="${registro}" method="post">
		<fieldset>
			<p>
				<label>limite:</label> <input name="limite"
					value="${limite}" />
			</p>
			<p>
				<label>Categorias Relacionadas:</label> <input name="categorias" placeholder="Ejemplo: categoria01,categoria02"
					value="${categorias}" />
			</p>
			
			<input type="submit" value="Guardar" >
		</fieldset>
	</form>
</div>
<br>
<br>
<br>
