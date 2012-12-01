

<%@ page import="ar.com.goliath.User" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="admin" />
<g:set var="entityName"
	value="${message(code: 'user.label', default: 'User')}" />
<title><g:message code="default.list.label" args="[entityName]"
		default="Listado User" /></title>
<export:resource />
</head>
<body>
	<div id="main" role="main">
		<hr class="space" />
		<h1>
			<g:message code="default.list.label" args="[entityName]"
				default="Listado User" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message">${flash.message}</div>
		</g:if>

		<section id="abm">
			<g:render
				template="/user/search" />
			<section class="clearfix">
				<div class="left">
					<button class="selected"
						onclick="javascript:window.location.replace(${createLink(uri: '/')})">
						<i class="home"></i><a class="home" href="${createLink(uri: '/')}">Home</a>
					</button>
					<button
						onclick="javascript:window.location.replace('<g:createLink action="create"/>')">
						<i class="user"></i>New User
					</button>
				</div>
				<div class="right">
					<button class="color red">
						<i class="trash"></i>Eliminar
					</button>
				</div>
			</section>
			<table class="listings" summary="">
				<thead>
					<tr>
						<th></th>
						
                                          <g:sortableColumn property="id" title="${message(code: 'user.id.label', default: 'Id')}" />
                                        
                                          <g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}" />
                                        
                                          <g:sortableColumn property="password" title="${message(code: 'user.password.label', default: 'Password')}" />
                                        
                                          <g:sortableColumn property="email" title="${message(code: 'user.email.label', default: 'Email')}" />
                                        
                                          <g:sortableColumn property="firstName" title="${message(code: 'user.firstName.label', default: 'First Name')}" />
                                        
                                          <g:sortableColumn property="lastName" title="${message(code: 'user.lastName.label', default: 'Last Name')}" />
                                        

						<th nowrap><label><g:message code="editar.label"
									default="Editar" /> </label>
						</th>
						<th nowrap><label><g:message code="ver.label"
									default="Ver" /> </label>
						</th>

					</tr>
				</thead>
				<tbody>

					<g:each in="${userInstanceList}" status="i"
						var="userInstance">
						<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							<td><input name="item" type="checkbox" value=""></td>
							
                              <td>${fieldValue(bean:userInstance, field:'id')}</td>
                          
                              <td>${fieldValue(bean:userInstance, field:'username')}</td>
                          
                              <td>${fieldValue(bean:userInstance, field:'password')}</td>
                          
                              <td>${fieldValue(bean:userInstance, field:'email')}</td>
                          
                              <td>${fieldValue(bean:userInstance, field:'firstName')}</td>
                          
                              <td>${fieldValue(bean:userInstance, field:'lastName')}</td>
                          
							<td><g:link action="edit" class="edit"
									id="${userInstance.id}">&nbsp;</g:link>
							</td>
							<td><g:link action="show" class="show"
									id="${userInstance.id}">&nbsp;</g:link>
							</td>
						</tr>
					</g:each>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="9"><g:paginate total="${userInstanceTotal}" max="5" />
						</th>
					</tr>

				</tfoot>
			</table>
		</section>
	</div>

</body>
</html>
