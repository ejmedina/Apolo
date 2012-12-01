
<script type="text/javascript">
  function cleanForm(){
	

			document.getElementById("address").value="";
                    

			document.getElementById("cuil").value="";
                    

			document.getElementById("dni").value="";
                    

			document.getElementById("email").value="";
                    

			document.getElementById("firstName").value="";
                    

			document.getElementById("lastName").value="";
                    

			document.getElementById("middleName").value="";
                    

			document.getElementById("phone").value="";
                    

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
                            
                            
								  <label for="address"><g:message code="driver.address.label" default="Address" /></label>
								   <g:textField name="address" value="${driverInstance?.address}" />
                        
                            
                            
								  <label for="cuil"><g:message code="driver.cuil.label" default="Cuil" /></label>
								   <g:textField name="cuil" value="${driverInstance?.cuil}" />
                        
                            
								</p>
								<p>
                            
                            
								  <label for="dni"><g:message code="driver.dni.label" default="Dni" /></label>
								   <g:textField name="dni" value="${driverInstance?.dni}" />
                        
                            
                            
								  <label for="email"><g:message code="driver.email.label" default="Email" /></label>
								   <g:textField name="email" value="${driverInstance?.email}" />
                        
                            
                            
								  <label for="firstName"><g:message code="driver.firstName.label" default="First Name" /></label>
								   <g:textField name="firstName" value="${driverInstance?.firstName}" />
                        
                            
                            
								  <label for="lastName"><g:message code="driver.lastName.label" default="Last Name" /></label>
								   <g:textField name="lastName" value="${driverInstance?.lastName}" />
                        
                            
								</p>
								<p>
                            
                            
								  <label for="middleName"><g:message code="driver.middleName.label" default="Middle Name" /></label>
								   <g:textField name="middleName" value="${driverInstance?.middleName}" />
                        
                            
                            
                            
                            
								  <label for="phone"><g:message code="driver.phone.label" default="Phone" /></label>
								   <g:textField name="phone" value="${driverInstance?.phone}" />
                        
                            
                            
								  <label for="status"><g:message code="driver.status.label" default="Status" /></label>
								   <g:textField name="status" value="${driverInstance?.status}" />
                        
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
