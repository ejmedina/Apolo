<%@ page import="apolo.Trip" %>



<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'arrival', 'error')} ">
	<label for="arrival">
		<g:message code="trip.arrival.label" default="Arrival" />
		
	</label>
	<g:textField name="arrival" value="${tripInstance?.arrival}" />
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'coordinates', 'error')} ">
	<label for="coordinates">
		<g:message code="trip.coordinates.label" default="Coordinates" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'departure', 'error')} ">
	<label for="departure">
		<g:message code="trip.departure.label" default="Departure" />
		
	</label>
	<g:textField name="departure" value="${tripInstance?.departure}" />
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'distanceCovered', 'error')} ">
	<label for="distanceCovered">
		<g:message code="trip.distanceCovered.label" default="Distance Covered" />
		
	</label>
	<g:textField name="distanceCovered" value="${fieldValue(bean: tripInstance, field: 'distanceCovered')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'duration', 'error')} ">
	<label for="duration">
		<g:message code="trip.duration.label" default="Duration" />
		
	</label>
	<g:textField name="duration" value="${fieldValue(bean: tripInstance, field: 'duration')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'endDate', 'error')} ">
	<label for="endDate">
		<g:message code="trip.endDate.label" default="End Date" />
		
	</label>
	<g:datePicker name="endDate" precision="day" value="${tripInstance?.endDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'estimatedEndDate', 'error')} ">
	<label for="estimatedEndDate">
		<g:message code="trip.estimatedEndDate.label" default="Estimated End Date" />
		
	</label>
	<g:datePicker name="estimatedEndDate" precision="day" value="${tripInstance?.estimatedEndDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'startDate', 'error')} ">
	<label for="startDate">
		<g:message code="trip.startDate.label" default="Start Date" />
		
	</label>
	<g:datePicker name="startDate" precision="day" value="${tripInstance?.startDate}" />
</div>

