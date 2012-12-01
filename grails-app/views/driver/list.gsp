

<%@ page import="apolo.Driver" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="admin" />
<g:set var="entityName"
	value="${message(code: 'driver.label', default: 'Driver')}" />
<title><g:message code="default.list.label" args="[entityName]"
		default="Listado Driver" /></title>
<export:resource />
</head>
<body>
	<div id="main" role="main">
		<hr class="space" />
		<h1>
			<g:message code="default.list.label" args="[entityName]"
				default="Listado Driver" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message">${flash.message}</div>
		</g:if>

		<section id="abm">
			<g:render
				template="/driver/search" />
			<section class="clearfix">
				<div class="left">
					<button class="selected"
						onclick="javascript:window.location.replace(${createLink(uri: '/')})">
						<i class="home"></i><a class="home" href="${createLink(uri: '/')}">Home</a>
					</button>
					<button
						onclick="javascript:window.location.replace('<g:createLink action="create"/>')">
						<i class="user"></i><g:message code="default.new.label" args="[entityName]"
						default="Nuevo Driver" />
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
						
                                          <g:sortableColumn property="id" title="${message(code: 'driver.id.label', default: 'Id')}" />
                                        
                                          <g:sortableColumn property="address" title="${message(code: 'driver.address.label', default: 'Address')}" />
                                        
                                          <g:sortableColumn property="cuil" title="${message(code: 'driver.cuil.label', default: 'Cuil')}" />
                                        
                                          <g:sortableColumn property="dni" title="${message(code: 'driver.dni.label', default: 'Dni')}" />
                                        
                                          <g:sortableColumn property="email" title="${message(code: 'driver.email.label', default: 'Email')}" />
                                        
                                          <g:sortableColumn property="firstName" title="${message(code: 'driver.firstName.label', default: 'First Name')}" />
                                        

						<th nowrap><label><g:message code="editar.label"
									default="Editar" /> </label>
						</th>
						<th nowrap><label><g:message code="ver.label"
									default="Ver" /> </label>
						</th>

					</tr>
				</thead>
				<tbody>

					<g:each in="${driverInstanceList}" status="i"
						var="driverInstance">
						<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							<td><input name="item" type="checkbox" value=""></td>
							
                              <td>${fieldValue(bean:driverInstance, field:'id')}</td>
                          
                              <td>${fieldValue(bean:driverInstance, field:'address')}</td>
                          
                              <td>${fieldValue(bean:driverInstance, field:'cuil')}</td>
                          
                              <td>${fieldValue(bean:driverInstance, field:'dni')}</td>
                          
                              <td>${fieldValue(bean:driverInstance, field:'email')}</td>
                          
                              <td>${fieldValue(bean:driverInstance, field:'firstName')}</td>
                          
							<td><g:link action="edit" class="edit"
									id="${driverInstance.id}">&nbsp;</g:link>
							</td>
							<td><g:link action="show" class="show"
									id="${driverInstance.id}">&nbsp;</g:link>
							</td>
						</tr>
					</g:each>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="9"><g:paginate total="${driverInstanceTotal}" max="5" />
						</th>
					</tr>

				</tfoot>
			</table>
		</section>
	</div>

</body>
</html>
