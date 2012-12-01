<%@ page import="apolo.Incident" %>



<div class="fieldcontain ${hasErrors(bean: incidentInstance, field: 'date', 'error')} ">
	<label for="date">
		<g:message code="incident.date.label" default="Date" />
		
	</label>
	<g:datePicker name="date" precision="day" value="${incidentInstance?.date}" />
</div>

<div class="fieldcontain ${hasErrors(bean: incidentInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="incident.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${incidentInstance?.description}" />
</div>

