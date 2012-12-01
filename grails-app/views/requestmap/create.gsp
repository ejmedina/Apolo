

<%@ page import="ar.com.goliath.Requestmap" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="admin" />
<g:set var="entityName"
	value="${message(code: 'requestmap.label', default: 'Requestmap')}" />
<title><g:message code="default.create.label"
		args="[entityName]" default="Nuevo Requestmap" /></title>
</head>
<body>
	<div id="main" role="main">
		<hr class="space" />

		<div class="body">
			<h1></h1>
			<g:if test="${flash.message}">
				<div class="notice">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${requestmapInstance}">
				<div class="error">
					<g:renderErrors bean="${requestmapInstance}" as="list" />
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
						default="Listado Requestmap" />
				</button>
			</div>
			<section id="backend">
				<g:form action="save" method="post"
					>

					<fieldset>
						<legend>
							<g:message code="default.create.label" args="[entityName]"
								default="Nuevo Requestmap" />
						</legend>
						
                           <p>
                               
                                    <label for="url"><g:message code="requestmap.url.label" default="Url" />:</label>
                                
                               
                                    <g:textField name="url" value="${requestmapInstance?.url}" />
                              </p>
                        
                           <p>
                               
                                    <label for="configAttribute"><g:message code="requestmap.configAttribute.label" default="Config Attribute" />:</label>
                                
                               
                                    <g:textField name="configAttribute" value="${requestmapInstance?.configAttribute}" />
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
