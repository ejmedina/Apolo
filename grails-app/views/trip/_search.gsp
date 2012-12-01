
<script type="text/javascript">
  function cleanForm(){
	

			document.getElementById("arrival").value="";
                    

			document.getElementById("departure").value="";
                    
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
                            
                            
								  <label for="arrival"><g:message code="trip.arrival.label" default="Arrival" /></label>
								   <g:textField name="arrival" value="${tripInstance?.arrival}" />
                        
                            
                            
                            
                            
								  <label for="departure"><g:message code="trip.departure.label" default="Departure" /></label>
								   <g:textField name="departure" value="${tripInstance?.departure}" />
                        
                            
								</p>
								<p>
                            
                            
                            
								</p>
								<p>
                            
                            
                            
								</p>
								<p>
                            
                            
                            
								</p>
								<p>
                            
                            
                            
								</p>
								<p>
                            
                            
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
