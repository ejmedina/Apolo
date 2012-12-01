

<%@ page import="ar.com.goliath.Requestmap" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="admin" />
<g:set var="entityName"
	value="${message(code: 'requestmap.label', default: 'Requestmap')}" />
<title><g:message code="default.show.label" args="[entityName]"
		default="Ver Requestmap" />
</title>
</head>
<body>
	<div id="main" role="main">
		<hr class="space" />
		
		<div class="body">
			<h1>
				<g:message code="default.show.label" args="[entityName]"
					default="Ver Requestmap" />
			</h1>
			<g:if test="${flash.message}">
				<div class="notice">${flash.message}</div>
			</g:if>
				<div class="nav">
				<button class="selected"
					onclick="javascript:window.location.replace(${createLink(uri: '/')})">
					<i class="home"></i><a class="home" href="${createLink(uri: '/')}">Home</a>
				</button>
				<button
					onclick="javascript:window.location.replace('<g:createLink action="list"/>')">
					<i class="user"></i><g:message code="default.list.label" args="[entityName]"
						default="Listado Requestmap" />
				</button>
				<button
					onclick="javascript:window.location.replace('<g:createLink action="create"/>')">
					<i class="user"></i><g:message code="default.new.label" args="[entityName]"
							default="Nuevo Requestmap" />
				</button>
			</div>
			
			<div class="dialog">
				<table class="listings">
					<thead>
						<tr class="prop">
							<th valign="top" class="name">Name:</th>

							<th valign="top" class="value">Value:</th>

						</tr>
					</thead>
					<tbody>

						
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:requestmapInstance, field:'id')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Url:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:requestmapInstance, field:'url')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Config Attribute:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:requestmapInstance, field:'configAttribute')}</td>
                          
                        </tr>
                    
					</tbody>
					<tfoot>
						<tr>
							<th></th>
							<th></th>
						</tr>
					</tfoot>
				</table>
			</div>
			<div class="buttons">
				<g:form>
					<input type="hidden" name="id" value="${requestmapInstance?.id}" />
					<span class="button"><g:actionSubmit class="edit"
							action="edit"
							value="${message(code: 'default.button.edit.label', default: 'Modificar')}" />
					</span>
					<span class="button"><g:actionSubmit class="delete"
							action="delete"
							value="${message(code: 'default.button.delete.label', default: 'Borrar')}"
							onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</span>

				</g:form>
			</div>
		</div>
	</div>
</body>
</html>
