<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<portlet:defineObjects />

<input id="slider_hitss_portlet_namespace" name="" type="hidden" value="<portlet:namespace/>" />

<div id="carousel-example-generic" class="carousel slide slideHitss "
	data-ride="carousel">
	<ol class="carousel-indicators">
		<c:set var="counter" value="0"/>
		<c:forEach var="slide" items="${listaSliders}">	
			<c:if test="${counter==0}">
				<li data-target="#carousel-example-generic" data-slide-to="${counter}" class="active"></li>
			</c:if>
			<c:if test="${counter>0}">
				<li data-target="#carousel-example-generic" data-slide-to="${counter}"></li>
			</c:if>	
			<c:set var="counter" value="${counter + 1}"/>
		</c:forEach>		
	</ol>
	
	<div class="carousel-inner" role="listbox">
		<c:set var="counter2" value="0"/>
		<c:forEach var="slide" items="${listaSliders}">
			<c:if test="${counter2==0}">
				<div class="item active">
					<img src="${slide.urlImage}" alt="${slide.titulo}">
					<div class="carousel-caption">
						 <h3>${slide.titulo}</h3>
	   					 <p>${slide.descripcion}</p>					
					</div>
				</div>
			</c:if>
			<c:if test="${counter2>0}">
				<div class="item">
					<img src="${slide.urlImage}" alt="${slide.titulo}">
					<div class="carousel-caption">
						 <h3>${slide.titulo}</h3>
	   					 <p>${slide.descripcion}</p>
	   				</div>
				</div>
			</c:if>
			<c:set var="counter2" value="${counter2 + 1}"/>
		</c:forEach>	
	</div>

	<!-- Controls -->
	<a class="left carousel-control" href="#carousel-example-generic"
		role="button" data-slide="prev"> <span
		class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
		class="sr-only">Previous</span>
	</a> <a class="right carousel-control" href="#carousel-example-generic"
		role="button" data-slide="next"> <span
		class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span
		class="sr-only">Next</span>
	</a>
</div>
