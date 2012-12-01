
<script type="text/javascript">
  function cleanForm(){
	

			document.getElementById("username").value="";
                    

			document.getElementById("password").value="";
                    

			document.getElementById("email").value="";
                    

			document.getElementById("firstName").value="";
                    

			document.getElementById("lastName").value="";
                    
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
                            
                            
								  <label for="username"><g:message code="user.username.label" default="Username" /></label>
								   <g:textField name="username" value="${userInstance?.username}" />
                        
                            
                            
								  <label for="password"><g:message code="user.password.label" default="Password" /></label>
								   <g:textField name="password" value="${userInstance?.password}" />
                        
                            
								</p>
								<p>
                            
                            
								  <label for="email"><g:message code="user.email.label" default="Email" /></label>
								   <g:textField name="email" value="${userInstance?.email}" />
                        
                            
                            
								  <label for="firstName"><g:message code="user.firstName.label" default="First Name" /></label>
								   <g:textField name="firstName" value="${userInstance?.firstName}" />
                        
                            
                            
								  <label for="lastName"><g:message code="user.lastName.label" default="Last Name" /></label>
								   <g:textField name="lastName" value="${userInstance?.lastName}" />
                        
                            
                            
                            
                            
                            
                            
                            
                            
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
