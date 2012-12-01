package apolo


import org.codehaus.groovy.grails.commons.ConfigurationHolder
class IncidentController {
    def exportService
   
    def incidentService
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
                 def incidentInstance = new IncidentCommand()

        if(incidentInstance.validateAllParams(params)!=""){
           flash.message=incidentInstance.validateAllParams(params)
        }
        incidentInstance.commandSetParameters(params)
        def count=incidentService.getAllCount(incidentInstance)
        if(params?.format && params.format != "html")incidentInstance.max=count
        def results=incidentService.getAll(incidentInstance)
        if(params?.format && params.format != "html"){
            exportToFile(results)
         }
	[ incidentInstanceList:results, incidentInstanceTotal:count ,incidentInstance:incidentInstance]
    }

    def show = {
        def incidentInstance = Incident.get( params.id )

        if(!incidentInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'incident.label', default: 'Incident'), params.id])}"
            redirect(action:list)
        }
        else { return [ incidentInstance : incidentInstance ] }
    }

    def delete = {
        def incidentInstance = Incident.get( params.id )
        if(incidentInstance) {
            try {
                incidentInstance.delete(flush:true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'incident.label', default: 'Incident'), params.id])}"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'incident.label', default: 'Incident'), params.id])}"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'incident.label', default: 'Incident'), params.id])}"
            redirect(action:list)
        }
    }

    def edit = {
        def incidentInstance = Incident.get( params.id )

        if(!incidentInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'incident.label', default: 'Incident'), params.id])}"
            redirect(action:list)
        }
        else {
            return [ incidentInstance : incidentInstance ]
        }
    }

    def update = {
        def incidentInstance = Incident.get( params.id )
        if(incidentInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(incidentInstance.version > version) {
                 
                    incidentInstance.errors.rejectValue("version", "incident.optimistic.locking.failure", "Otro usuario esta modificando  Incident mientras usted lo esta editando.")
                    render(view:'edit',model:[incidentInstance:incidentInstance])
                    return
                }
            }
            incidentInstance.properties = params
            if(!incidentInstance.hasErrors() && incidentInstance.save()) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'incident.label', default: 'Incident'), incidentInstance.id])}"
                redirect(action:show,id:incidentInstance.id)
            }
            else {
                render(view:'edit',model:[incidentInstance:incidentInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'incident.label', default: 'Incident'), params.id])}"
            redirect(action:list)
        }
    }

    def create = {
        def incidentInstance = new Incident()
        incidentInstance.properties = params
        return ['incidentInstance':incidentInstance]
    }

    def save = {
        def incidentInstance = new Incident(params)
        if(!incidentInstance.hasErrors() && incidentInstance.save()) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'incident.label', default: 'Incident'), incidentInstance.id])}"
            redirect(action:show,id:incidentInstance.id)
        }
        else {
            render(view:'create',model:[incidentInstance:incidentInstance])
        }
    }
     def search = {
          def incidentInstance = new IncidentCommand()

        if(incidentInstance.validateAllParams(params)!=""){
           flash.message=incidentInstance.validateAllParams(params)
        }
        incidentInstance.commandSetParameters(params)
        def count=incidentService.getAllCount(incidentInstance)
        if(params?.format && params.format != "html")incidentInstance.max=count
        def results=incidentService.getAll(incidentInstance)
        if(params?.format && params.format != "html"){
            exportToFile(results)
         }
        render(view:'list', model:[ incidentInstanceList:results, incidentInstanceTotal:count ,incidentInstance:incidentInstance])
      }
 
}
