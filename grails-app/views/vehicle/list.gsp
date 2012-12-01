

<%@ page import="apolo.Vehicle" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="admin" />
<g:set var="entityName"
	value="${message(code: 'vehicle.label', default: 'Vehicle')}" />
<title><g:message code="default.list.label" args="[entityName]"
		default="Listado Vehicle" /></title>
<export:resource />
</head>
<body>
	<div id="main" role="main">
		<hr class="space" />
		<h1>
			<g:message code="default.list.label" args="[entityName]"
				default="Listado Vehicle" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message">${flash.message}</div>
		</g:if>

		<section id="abm">
			<g:render
				template="/vehicle/search" />
			<section class="clearfix">
				<div class="left">
					<button class="selected"
						onclick="javascript:window.location.replace(${createLink(uri: '/')})">
						<i class="home"></i><a class="home" href="${createLink(uri: '/')}">Home</a>
					</button>
					<button
						onclick="javascript:window.location.replace('<g:createLink action="create"/>')">
						<i class="user"></i><g:message code="default.new.label" args="[entityName]"
						default="Nuevo Vehicle" />
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
						
                                          <g:sortableColumn property="id" title="${message(code: 'vehicle.id.label', default: 'Id')}" />
                                        
                                          <g:sortableColumn property="brand" title="${message(code: 'vehicle.brand.label', default: 'Brand')}" />
                                        
                                          <g:sortableColumn property="cargo" title="${message(code: 'vehicle.cargo.label', default: 'Cargo')}" />
                                        
                                          <g:sortableColumn property="foodAble" title="${message(code: 'vehicle.foodAble.label', default: 'Food Able')}" />
                                        
                                          <g:sortableColumn property="freezerAble" title="${message(code: 'vehicle.freezerAble.label', default: 'Freezer Able')}" />
                                        
                                          <g:sortableColumn property="fuelType" title="${message(code: 'vehicle.fuelType.label', default: 'Fuel Type')}" />
                                        

						<th nowrap><label><g:message code="editar.label"
									default="Editar" /> </label>
						</th>
						<th nowrap><label><g:message code="ver.label"
									default="Ver" /> </label>
						</th>

					</tr>
				</thead>
				<tbody>

					<g:each in="${vehicleInstanceList}" status="i"
						var="vehicleInstance">
						<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							<td><input name="item" type="checkbox" value=""></td>
							
                              <td>${fieldValue(bean:vehicleInstance, field:'id')}</td>
                          
                              <td>${fieldValue(bean:vehicleInstance, field:'brand')}</td>
                          
                              <td>${fieldValue(bean:vehicleInstance, field:'cargo')}</td>
                          
                              <td>${fieldValue(bean:vehicleInstance, field:'foodAble')}</td>
                          
                              <td>${fieldValue(bean:vehicleInstance, field:'freezerAble')}</td>
                          
                              <td>${fieldValue(bean:vehicleInstance, field:'fuelType')}</td>
                          
							<td><g:link action="edit" class="edit"
									id="${vehicleInstance.id}">&nbsp;</g:link>
							</td>
							<td><g:link action="show" class="show"
									id="${vehicleInstance.id}">&nbsp;</g:link>
							</td>
						</tr>
					</g:each>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="9"><g:paginate total="${vehicleInstanceTotal}" max="5" />
						</th>
					</tr>

				</tfoot>
			</table>
		</section>
	</div>

</body>
</html>
