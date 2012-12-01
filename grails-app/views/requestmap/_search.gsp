
<script type="text/javascript">
  function cleanForm(){
	

			document.getElementById("url").value="";
                    

			document.getElementById("configAttribute").value="";
                    
}
</script>
<div class="span-24 last">
	<input type="button" name="btn" id="btn" value="Ocultar Filtros"
		onclick="doExpandCollapse('search')">
	<g:form action="search" method="post" name="search" id="search"
		onsubmit="validarStruct()">
		<fieldset>
			<legend>Buscar</legend>
			  
                            
                            	 <p>
                            
                            
								  <label for="url"><g:message code="requestmap.url.label" default="Url" /></label>
								   <g:textField name="url" value="${requestmapInstance?.url}" />
                        
                            
                            
								  <label for="configAttribute"><g:message code="requestmap.configAttribute.label" default="Config Attribute" /></label>
								   <g:textField name="configAttribute" value="${requestmapInstance?.configAttribute}" />
                        
						 </p>
	
				<div class="nav">
				<button onclick="javascript:submit()">
					<i class="search"></i>Buscar
				</button>
		&nbsp;
				<button class="color blue" onclick="cleanForm()">
					<i class="archive"></i>Clean
				</button>
			</div>
		</fieldset>

	</g:form>
</div>
