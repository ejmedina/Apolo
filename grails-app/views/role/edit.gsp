

<%@ page import="ar.com.goliath.Role" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="admin" />
<g:set var="entityName"
	value="${message(code: 'role.label', default: 'Role')}" />
<title><g:message code="default.edit.label" args="[entityName]"
		default="Editar Role" />
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
			<g:hasErrors bean="${roleInstance}">
				<div class="error">
					<g:renderErrors bean="${roleInstance}" as="list" />
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
						default="Listado Role" />
				</button>
				<button
					onclick="javascript:window.location.replace('<g:createLink action="create"/>')">
					<i class="user"></i>
					<g:message code="default.new.label" args="[entityName]"
						default="Nuevo User" />
				</button>
			</div>
			<section id="backend">
			<g:form method="post"
				>
				<fieldset>
						<legend>
							<g:message code="default.edit.label" args="[entityName]"
					default="Editar Role" />
						</legend>
				<input type="hidden" name="id" value="${roleInstance?.id}" />
				<input type="hidden" name="version"
					value="${roleInstance?.version}" />
				<div class="dialog">
					<table>
						<tbody>
							
                         <p>
					<label for="authority"><g:message code="role.authority.label" default="Authority" />
					</label>
                             
                                    <g:textField name="authority" value="${roleInstance?.authority}" />
                               
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
