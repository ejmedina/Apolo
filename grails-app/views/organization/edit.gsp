

<%@ page import="apolo.Organization" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="admin" />
<g:set var="entityName"
	value="${message(code: 'organization.label', default: 'Organization')}" />
<title><g:message code="default.edit.label" args="[entityName]"
		default="Editar Organization" />
</title>
</head>
<body>
	<div id="main" role="main">
		<hr class="space" />

		<div class="body">
			<h1>
				
			</h1>
			<g:if test="${flash.message}">
				<div class="notice">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${organizationInstance}">
				<div class="error">
					<g:renderErrors bean="${organizationInstance}" as="list" />
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
						default="Listado Organization" />
				</button>
				<button
					onclick="javascript:window.location.replace('<g:createLink action="create"/>')">
					<i class="user"></i>
					<g:message code="default.new.label" args="[entityName]"
						default="Nuevo Organization" />
				</button>
			</div>
			<section id="backend">
			<g:form method="post"
				>
				<fieldset>
						<legend>
							<g:message code="default.edit.label" args="[entityName]"
					default="Editar Organization" />
						</legend>
				<input type="hidden" name="id" value="${organizationInstance?.id}" />
				<input type="hidden" name="version"
					value="${organizationInstance?.version}" />
				<div class="dialog">
					<table>
						<tbody>
							
                         <p>
					<label for="name"><g:message code="organization.name.label" default="Name" />
					</label>
                             
                                    <g:textField name="name" value="${organizationInstance?.name}" />
                               
                          </p>
                        
						<p>
							<g:actionSubmit class="save"
							action="update"
							value="${message(code: 'default.button.update.label', default: 'Modificar')}" />
							<g:actionSubmit class="delete"
							action="delete"
							value="${message(code: 'default.button.delete.label', default: 'Borrar')}"
							onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Esta seguro que desea eliminarlo?')}');" />
						</p>
				</div>
				
				</fieldset>
			
			</g:form>
			</section>
		</div>
	</div>
</body>
</html>
