

<%@ page import="apolo.Driver" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="admin" />
<g:set var="entityName"
	value="${message(code: 'driver.label', default: 'Driver')}" />
<title><g:message code="default.create.label"
		args="[entityName]" default="Nuevo Driver" /></title>
</head>
<body>
	<div id="main" role="main">
		<hr class="space" />

		<div class="body">
			<h1></h1>
			<g:if test="${flash.message}">
				<div class="notice">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${driverInstance}">
				<div class="error">
					<g:renderErrors bean="${driverInstance}" as="list" />
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
						default="Listado Driver" />
				</button>
			</div>
			<section id="backend">
				<g:form action="save" method="post"
					>

					<fieldset>
						<legend>
							<g:message code="default.create.label" args="[entityName]"
								default="Nuevo Driver" />
						</legend>
						
                           <p>
                               
                                    <label for="address"><g:message code="driver.address.label" default="Address" />:</label>
                                
                               
                                    <g:textField name="address" value="${driverInstance?.address}" />
                              </p>
                        
                           <p>
                               
                                    <label for="cuil"><g:message code="driver.cuil.label" default="Cuil" />:</label>
                                
                               
                                    <g:textField name="cuil" value="${driverInstance?.cuil}" />
                              </p>
                        
                           <p>
                               
                                    <label for="dni"><g:message code="driver.dni.label" default="Dni" />:</label>
                                
                               
                                    <g:textField name="dni" value="${driverInstance?.dni}" />
                              </p>
                        
                           <p>
                               
                                    <label for="email"><g:message code="driver.email.label" default="Email" />:</label>
                                
                               
                                    <g:textField name="email" value="${driverInstance?.email}" />
                              </p>
                        
                           <p>
                               
                                    <label for="firstName"><g:message code="driver.firstName.label" default="First Name" />:</label>
                                
                               
                                    <g:textField name="firstName" value="${driverInstance?.firstName}" />
                              </p>
                        
                           <p>
                               
                                    <label for="lastName"><g:message code="driver.lastName.label" default="Last Name" />:</label>
                                
                               
                                    <g:textField name="lastName" value="${driverInstance?.lastName}" />
                              </p>
                        
                           <p>
                               
                                    <label for="middleName"><g:message code="driver.middleName.label" default="Middle Name" />:</label>
                                
                               
                                    <g:textField name="middleName" value="${driverInstance?.middleName}" />
                              </p>
                        
                           <p>
                               
                                    <label for="mobile"><g:message code="driver.mobile.label" default="Mobile" />:</label>
                                
                               
                                    <g:textField name="mobile" value="${fieldValue(bean: driverInstance, field: 'mobile')}" />
                              </p>
                        
                           <p>
                               
                                    <label for="phone"><g:message code="driver.phone.label" default="Phone" />:</label>
                                
                               
                                    <g:textField name="phone" value="${driverInstance?.phone}" />
                              </p>
                        
                           <p>
                               
                                    <label for="status"><g:message code="driver.status.label" default="Status" />:</label>
                                
                               
                                    <g:textField name="status" value="${driverInstance?.status}" />
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
