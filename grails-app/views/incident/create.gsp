

<%@ page import="apolo.Incident" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="admin" />
<g:set var="entityName"
	value="${message(code: 'incident.label', default: 'Incident')}" />
<title><g:message code="default.create.label"
		args="[entityName]" default="Nuevo Incident" /></title>
</head>
<body>
	<div id="main" role="main">
		<hr class="space" />

		<div class="body">
			<h1></h1>
			<g:if test="${flash.message}">
				<div class="notice">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${incidentInstance}">
				<div class="error">
					<g:renderErrors bean="${incidentInstance}" as="list" />
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
						default="Listado Incident" />
				</button>
			</div>
			<section id="backend">
				<g:form action="save" method="post"
					>

					<fieldset>
						<legend>
							<g:message code="default.create.label" args="[entityName]"
								default="Nuevo Incident" />
						</legend>
						
                           <p>
                               
                                    <label for="date"><g:message code="incident.date.label" default="Date" />:</label>
                                
                               
                                    <g:datePicker name="date" precision="day" value="${incidentInstance?.date}" />
                              </p>
                        
                           <p>
                               
                                    <label for="description"><g:message code="incident.description.label" default="Description" />:</label>
                                
                               
                                    <g:textField name="description" value="${incidentInstance?.description}" />
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
