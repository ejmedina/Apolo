

<%@ page import="apolo.Vehicle" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="admin" />
<g:set var="entityName"
	value="${message(code: 'vehicle.label', default: 'Vehicle')}" />
<title><g:message code="default.create.label"
		args="[entityName]" default="Nuevo Vehicle" /></title>
</head>
<body>
	<div id="main" role="main">
		<hr class="space" />

		<div class="body">
			<h1></h1>
			<g:if test="${flash.message}">
				<div class="notice">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${vehicleInstance}">
				<div class="error">
					<g:renderErrors bean="${vehicleInstance}" as="list" />
				</div>
			</g:hasErrors>

			<div class="nav">
				<button class="selected"
					onclick="javascript:window.location.replace(${createLink(uri: '/')})">
					<i class="home"></i><a class="home" href="${createLink(uri: '/')}">Home</a>
				</button>
				<button
					onclick="javascript:window.location.replace('<g:createLink action="list"/>')">
					<i class="user"></i>
					<g:message code="default.list.label" args="[entityName]"
						default="Listado Vehicle" />
				</button>
			</div>
			<section id="backend">
				<g:form action="save" method="post"
					>

					<fieldset>
						<legend>
							<g:message code="default.create.label" args="[entityName]"
								default="Nuevo Vehicle" />
						</legend>
						
                           <p>
                               
                                    <label for="brand"><g:message code="vehicle.brand.label" default="Brand" />:</label>
                                
                               
                                    <g:textField name="brand" value="${vehicleInstance?.brand}" />
                              </p>
                        
                           <p>
                               
                                    <label for="cargo"><g:message code="vehicle.cargo.label" default="Cargo" />:</label>
                                
                               
                                    <g:textField name="cargo" value="${fieldValue(bean: vehicleInstance, field: 'cargo')}" />
                              </p>
                        
                           <p>
                               
                                    <label for="foodAble"><g:message code="vehicle.foodAble.label" default="Food Able" />:</label>
                                
                               
                                    <g:checkBox name="foodAble" value="${vehicleInstance?.foodAble}" />
                              </p>
                        
                           <p>
                               
                                    <label for="freezerAble"><g:message code="vehicle.freezerAble.label" default="Freezer Able" />:</label>
                                
                               
                                    <g:checkBox name="freezerAble" value="${vehicleInstance?.freezerAble}" />
                              </p>
                        
                           <p>
                               
                                    <label for="fuelType"><g:message code="vehicle.fuelType.label" default="Fuel Type" />:</label>
                                
                               
                                    <g:textField name="fuelType" value="${vehicleInstance?.fuelType}" />
                              </p>
                        
                           <p>
                               
                                    <label for="height"><g:message code="vehicle.height.label" default="Height" />:</label>
                                
                               
                                    <g:textField name="height" value="${fieldValue(bean: vehicleInstance, field: 'height')}" />
                              </p>
                        
                           <p>
                               
                                    <label for="lenght"><g:message code="vehicle.lenght.label" default="Lenght" />:</label>
                                
                               
                                    <g:textField name="lenght" value="${fieldValue(bean: vehicleInstance, field: 'lenght')}" />
                              </p>
                        
                           <p>
                               
                                    <label for="licenceRequired"><g:message code="vehicle.licenceRequired.label" default="Licence Required" />:</label>
                                
                               
                                    <g:textField name="licenceRequired" value="${vehicleInstance?.licenceRequired}" />
                              </p>
                        
                           <p>
                               
                                    <label for="model"><g:message code="vehicle.model.label" default="Model" />:</label>
                                
                               
                                    <g:textField name="model" value="${vehicleInstance?.model}" />
                              </p>
                        
                           <p>
                               
                                    <label for="status"><g:message code="vehicle.status.label" default="Status" />:</label>
                                
                               
                                    <g:textField name="status" value="${vehicleInstance?.status}" />
                              </p>
                        
                           <p>
                               
                                    <label for="weight"><g:message code="vehicle.weight.label" default="Weight" />:</label>
                                
                               
                                    <g:textField name="weight" value="${fieldValue(bean: vehicleInstance, field: 'weight')}" />
                              </p>
                        
                           <p>
                               
                                    <label for="wide"><g:message code="vehicle.wide.label" default="Wide" />:</label>
                                
                               
                                    <g:textField name="wide" value="${fieldValue(bean: vehicleInstance, field: 'wide')}" />
                              </p>
                        
                           <p>
                               
                                    <label for="year"><g:message code="vehicle.year.label" default="Year" />:</label>
                                
                               
                                    <g:textField name="year" value="${fieldValue(bean: vehicleInstance, field: 'year')}" />
                              </p>
                        
						<p>
							<input type="submit"
								value="${message(code: 'default.button.create.label', default: 'Crear')}">
						</p>
		</div>
		</fieldset>
		</g:form>

		</section>
	</div>
	</div>


</body>
</html>
