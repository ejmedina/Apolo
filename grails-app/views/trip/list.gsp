

<%@ page import="apolo.Trip" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="admin" />
<g:set var="entityName"
	value="${message(code: 'trip.label', default: 'Trip')}" />
<title><g:message code="default.list.label" args="[entityName]"
		default="Listado Trip" /></title>
<export:resource />
</head>
<body>
	<div id="main" role="main">
		<hr class="space" />
		<h1>
			<g:message code="default.list.label" args="[entityName]"
				default="Listado Trip" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message">${flash.message}</div>
		</g:if>

		<section id="abm">
			<g:render
				template="/trip/search" />
			<section class="clearfix">
				<div class="left">
					<button class="selected"
						onclick="javascript:window.location.replace(${createLink(uri: '/')})">
						<i class="home"></i><a class="home" href="${createLink(uri: '/')}">Home</a>
					</button>
					<button
						onclick="javascript:window.location.replace('<g:createLink action="create"/>')">
						<i class="user"></i><g:message code="default.new.label" args="[entityName]"
						default="Nuevo Trip" />
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
						
                                          <g:sortableColumn property="id" title="${message(code: 'trip.id.label', default: 'Id')}" />
                                        
                                          <g:sortableColumn property="arrival" title="${message(code: 'trip.arrival.label', default: 'Arrival')}" />
                                        
                                          <g:sortableColumn property="coordinates" title="${message(code: 'trip.coordinates.label', default: 'Coordinates')}" />
                                        
                                          <g:sortableColumn property="departure" title="${message(code: 'trip.departure.label', default: 'Departure')}" />
                                        
                                          <g:sortableColumn property="distanceCovered" title="${message(code: 'trip.distanceCovered.label', default: 'Distance Covered')}" />
                                        
                                          <g:sortableColumn property="duration" title="${message(code: 'trip.duration.label', default: 'Duration')}" />
                                        

						<th nowrap><label><g:message code="editar.label"
									default="Editar" /> </label>
						</th>
						<th nowrap><label><g:message code="ver.label"
									default="Ver" /> </label>
						</th>

					</tr>
				</thead>
				<tbody>

					<g:each in="${tripInstanceList}" status="i"
						var="tripInstance">
						<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							<td><input name="item" type="checkbox" value=""></td>
							
                              <td>${fieldValue(bean:tripInstance, field:'id')}</td>
                          
                              <td>${fieldValue(bean:tripInstance, field:'arrival')}</td>
                          
                              <td>${fieldValue(bean:tripInstance, field:'coordinates')}</td>
                          
                              <td>${fieldValue(bean:tripInstance, field:'departure')}</td>
                          
                              <td>${fieldValue(bean:tripInstance, field:'distanceCovered')}</td>
                          
                              <td>${fieldValue(bean:tripInstance, field:'duration')}</td>
                          
							<td><g:link action="edit" class="edit"
									id="${tripInstance.id}">&nbsp;</g:link>
							</td>
							<td><g:link action="show" class="show"
									id="${tripInstance.id}">&nbsp;</g:link>
							</td>
						</tr>
					</g:each>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="9"><g:paginate total="${tripInstanceTotal}" max="5" />
						</th>
					</tr>

				</tfoot>
			</table>
		</section>
	</div>

</body>
</html>
