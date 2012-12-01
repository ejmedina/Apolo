
<script type="text/javascript">
  function cleanForm(){
	

			document.getElementById("brand").value="";
                    

			document.getElementById("fuelType").value="";
                    

			document.getElementById("licenceRequired").value="";
                    

			document.getElementById("model").value="";
                    

			document.getElementById("status").value="";
                    
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
                            
                            
								  <label for="brand"><g:message code="vehicle.brand.label" default="Brand" /></label>
								   <g:textField name="brand" value="${vehicleInstance?.brand}" />
                        
                            
                            
                            
                            
                            
                            
                            
                            
								  <label for="fuelType"><g:message code="vehicle.fuelType.label" default="Fuel Type" /></label>
								   <g:textField name="fuelType" value="${vehicleInstance?.fuelType}" />
                        
                            
								</p>
								<p>
                            
                            
                            
								</p>
								<p>
                            
                            
                            
								</p>
								<p>
                            
                            
								  <label for="licenceRequired"><g:message code="vehicle.licenceRequired.label" default="Licence Required" /></label>
								   <g:textField name="licenceRequired" value="${vehicleInstance?.licenceRequired}" />
                        
                            
                            
								  <label for="model"><g:message code="vehicle.model.label" default="Model" /></label>
								   <g:textField name="model" value="${vehicleInstance?.model}" />
                        
                            
                            
								  <label for="status"><g:message code="vehicle.status.label" default="Status" /></label>
								   <g:textField name="status" value="${vehicleInstance?.status}" />
                        
                            
                            
                            
                            
                            
                            
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
