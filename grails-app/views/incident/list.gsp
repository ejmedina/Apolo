

<%@ page import="apolo.Incident" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="admin" />
<g:set var="entityName"
	value="${message(code: 'incident.label', default: 'Incident')}" />
<title><g:message code="default.list.label" args="[entityName]"
		default="Listado Incident" /></title>
<export:resource />
</head>
<body>
	<div id="main" role="main">
		<hr class="space" />
		<h1>
			<g:message code="default.list.label" args="[entityName]"
				default="Listado Incident" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message">${flash.message}</div>
		</g:if>

		<section id="abm">
			<g:render
				template="/incident/search" />
			<section class="clearfix">
				<div class="left">
					<button class="selected"
						onclick="javascript:window.location.replace(${createLink(uri: '/')})">
						<i class="home"></i><a class="home" href="${createLink(uri: '/')}">Home</a>
					</button>
					<button
						onclick="javascript:window.location.replace('<g:createLink action="create"/>')">
						<i class="user"></i><g:message code="default.new.label" args="[entityName]"
						default="Nuevo Incident" />
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
						
                                          <g:sortableColumn property="id" title="${message(code: 'incident.id.label', default: 'Id')}" />
                                        
                                          <g:sortableColumn property="date" title="${message(code: 'incident.date.label', default: 'Date')}" />
                                        
                                          <g:sortableColumn property="description" title="${message(code: 'incident.description.label', default: 'Description')}" />
                                        

						<th nowrap><label><g:message code="editar.label"
									default="Editar" /> </label>
						</th>
						<th nowrap><label><g:message code="ver.label"
									default="Ver" /> </label>
						</th>

					</tr>
				</thead>
				<tbody>

					<g:each in="${incidentInstanceList}" status="i"
						var="incidentInstance">
						<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							<td><input name="item" type="checkbox" value=""></td>
							
                              <td>${fieldValue(bean:incidentInstance, field:'id')}</td>
                          
                              <td><fmt:dateFormat value="${incidentInstance.date}" format="dd/MM/yyyy"/></td>
			   
                              <td>${fieldValue(bean:incidentInstance, field:'description')}</td>
                          
							<td><g:link action="edit" class="edit"
									id="${incidentInstance.id}">&nbsp;</g:link>
							</td>
							<td><g:link action="show" class="show"
									id="${incidentInstance.id}">&nbsp;</g:link>
							</td>
						</tr>
					</g:each>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="9"><g:paginate total="${incidentInstanceTotal}" max="5" />
						</th>
					</tr>

				</tfoot>
			</table>
		</section>
	</div>

</body>
</html>
