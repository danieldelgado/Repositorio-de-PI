
<nav class="navbar navbar-inverse" role="navigation">
<div class="container">
            
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${site_default_url}" title="<@liferay.language key="go-to" /> ${site_name}" >${site_name}</a>
            </div>
           
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">         
					<#list nav_items as nav_item>
						<#if nav_item.isSelected()>
							<li class="selected">
						<#else>
							<li>
						</#if>
			
							<a href="${nav_item.getURL()}" ${nav_item.getTarget()}><span>${nav_item.icon()} ${nav_item.getName()}</span></a>
			
						</li>
					</#list>	
              	</ul>
              	
	       		<button class="btn btn-default navbar-btn navbar-right btnLogin" type="button">Login</button>
	        </div>
	        
</div>
</nav>
