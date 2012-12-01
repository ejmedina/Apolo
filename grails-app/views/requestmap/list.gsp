

<%@ page import="ar.com.goliath.Requestmap" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="admin" />
<g:set var="entityName"
	value="${message(code: 'requestmap.label', default: 'Requestmap')}" />
<title><g:message code="default.list.label" args="[entityName]"
		default="Listado Requestmap" /></title>
<export:resource />
</head>
<body>
	<div id="main" role="main">
		<hr class="space" />
		<h1>
			<g:message code="default.list.label" args="[entityName]"
				default="Listado Requestmap" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message">${flash.message}</div>
		</g:if>

		<section id="abm">
			<g:render
				template="/requestmap/search" />
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
						
                                          <g:sortableColumn property="id" title="${message(code: 'requestmap.id.label', default: 'Id')}" />
                                        
                                          <g:sortableColumn property="url" title="${message(code: 'requestmap.url.label', default: 'Url')}" />
                                        
                                          <g:sortableColumn property="configAttribute" title="${message(code: 'requestmap.configAttribute.label', default: 'Config Attribute')}" />
                                        

						<th nowrap><label><g:message code="editar.label"
									default="Editar" /> </label>
						</th>
						<th nowrap><label><g:message code="ver.label"
									default="Ver" /> </label>
						</th>

					</tr>
				</thead>
				<tbody>

					<g:each in="${requestmapInstanceList}" status="i"
						var="requestmapInstance">
						<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							<td><input name="item" type="checkbox" value=""></td>
							
                              <td>${fieldValue(bean:requestmapInstance, field:'id')}</td>
                          
                              <td>${fieldValue(bean:requestmapInstance, field:'url')}</td>
                          
                              <td>${fieldValue(bean:requestmapInstance, field:'configAttribute')}</td>
                          
							<td><g:link action="edit" class="edit"
									id="${requestmapInstance.id}">&nbsp;</g:link>
							</td>
							<td><g:link action="show" class="show"
									id="${requestmapInstance.id}">&nbsp;</g:link>
							</td>
						</tr>
					</g:each>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="9"><g:paginate total="${requestmapInstanceTotal}" max="5" />
						</th>
					</tr>

				</tfoot>
			</table>
		</section>
	</div>

</body>
</html>
