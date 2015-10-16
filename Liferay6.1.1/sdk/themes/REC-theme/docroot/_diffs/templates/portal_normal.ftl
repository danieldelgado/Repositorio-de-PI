<!DOCTYPE html>

<#include init />

<html class="<@liferay.language key="lang.dir" />" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>
   	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Portal de Reclutamiento">
    <meta name="author" content="Danielle Delgado Cabrera">

	${theme.include(top_head_include)}
</head>

<body <#if is_signed_in>  class="cbodyalt"  <#else>  class="cbody" </#if> role="document">

	${theme.include(body_top_include)}
	<#if is_signed_in>
		<@liferay.dockbar />
	</#if>	
	<#if has_navigation || is_signed_in>
		<#include "${full_templates_path}/navigation.ftl" />
	</#if>
	<div class="container">
		<#if selectable>
				${theme.include(content_include)}
				
		<#else>
				${portletDisplay.recycle()}
				${portletDisplay.setTitle(the_title)}
				${theme.wrapPortlet("portlet.ftl", content_include)}		
		</#if>		
		<hr>	
	</div>
	
	<div class = "login_session">
		${theme.runtime("complemento_WAR_Complementoportlet")}
	</div>
	
		<footer class="footer">		
			
			<div class="row">
		        <div class="col-lg-12">
		            <p>Portal de Reclutamiento Global Hitss 2015</p>
		        </div>
		    </div>
		   
		</footer>

	
	${theme.include(body_bottom_include)}
	<script src="${javascript_folder}/general.js"></script>
</body>
${theme.include(bottom_include)}
</html>