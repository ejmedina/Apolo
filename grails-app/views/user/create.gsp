

<%@ page import="ar.com.goliath.User" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="admin" />
<g:set var="entityName"
	value="${message(code: 'user.label', default: 'User')}" />
<title><g:message code="default.create.label"
		args="[entityName]" default="Nuevo User" /></title>
</head>
<body>
	<div id="main" role="main">
		<hr class="space" />

		<div class="body">
			<h1></h1>
			<g:if test="${flash.message}">
				<div class="notice">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userInstance}">
				<div class="error">
					<g:renderErrors bean="${userInstance}" as="list" />
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
						default="Listado User" />
				</button>
			</div>
			<section id="backend">
				<g:form action="save" method="post"
					>

					<fieldset>
						<legend>
							<g:message code="default.create.label" args="[entityName]"
								default="Nuevo User" />
						</legend>
						
                           <p>
                               
                                    <label for="username"><g:message code="user.username.label" default="Username" />:</label>
                                
                               
                                    <g:textField name="username" value="${userInstance?.username}" />
                              </p>
                        
                           <p>
                               
                                    <label for="password"><g:message code="user.password.label" default="Password" />:</label>
                                
                               
                                    <g:textField name="password" value="${userInstance?.password}" />
                              </p>
                        
                           <p>
                               
                                    <label for="email"><g:message code="user.email.label" default="Email" />:</label>
                                
                               
                                    <g:textField name="email" value="${userInstance?.email}" />
                              </p>
                        
                           <p>
                               
                                    <label for="firstName"><g:message code="user.firstName.label" default="First Name" />:</label>
                                
                               
                                    <g:textField name="firstName" value="${userInstance?.firstName}" />
                              </p>
                        
                           <p>
                               
                                    <label for="lastName"><g:message code="user.lastName.label" default="Last Name" />:</label>
                                
                               
                                    <g:textField name="lastName" value="${userInstance?.lastName}" />
                              </p>
                        
                           <p>
                               
                                    <label for="accountExpired"><g:message code="user.accountExpired.label" default="Account Expired" />:</label>
                                
                               
                                    <g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />
                              </p>
                        
                           <p>
                               
                                    <label for="accountLocked"><g:message code="user.accountLocked.label" default="Account Locked" />:</label>
                                
                               
                                    <g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />
                              </p>
                        
                           <p>
                               
                                    <label for="enabled"><g:message code="user.enabled.label" default="Enabled" />:</label>
                                
                               
                                    <g:checkBox name="enabled" value="${userInstance?.enabled}" />
                              </p>
                        
                           <p>
                               
                                    <label for="passwordExpired"><g:message code="user.passwordExpired.label" default="Password Expired" />:</label>
                                
                               
                                    <g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />
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
