package apolo


import org.codehaus.groovy.grails.commons.ConfigurationHolder
class TripController {
    def exportService
   
    def tripService
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
                 def tripInstance = new TripCommand()

        if(tripInstance.validateAllParams(params)!=""){
           flash.message=tripInstance.validateAllParams(params)
        }
        tripInstance.commandSetParameters(params)
        def count=tripService.getAllCount(tripInstance)
        if(params?.format && params.format != "html")tripInstance.max=count
        def results=tripService.getAll(tripInstance)
        if(params?.format && params.format != "html"){
            exportToFile(results)
         }
	[ tripInstanceList:results, tripInstanceTotal:count ,tripInstance:tripInstance]
    }

    def show = {
        def tripInstance = Trip.get( params.id )

        if(!tripInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'trip.label', default: 'Trip'), params.id])}"
            redirect(action:list)
        }
        else { return [ tripInstance : tripInstance ] }
    }

    def delete = {
        def tripInstance = Trip.get( params.id )
        if(tripInstance) {
            try {
                tripInstance.delete(flush:true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'trip.label', default: 'Trip'), params.id])}"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'trip.label', default: 'Trip'), params.id])}"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'trip.label', default: 'Trip'), params.id])}"
            redirect(action:list)
        }
    }

    def edit = {
        def tripInstance = Trip.get( params.id )

        if(!tripInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'trip.label', default: 'Trip'), params.id])}"
            redirect(action:list)
        }
        else {
            return [ tripInstance : tripInstance ]
        }
    }

    def update = {
        def tripInstance = Trip.get( params.id )
        if(tripInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(tripInstance.version > version) {
                 
                    tripInstance.errors.rejectValue("version", "trip.optimistic.locking.failure", "Otro usuario esta modificando  Trip mientras usted lo esta editando.")
                    render(view:'edit',model:[tripInstance:tripInstance])
                    return
                }
            }
            tripInstance.properties = params
            if(!tripInstance.hasErrors() && tripInstance.save()) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'trip.label', default: 'Trip'), tripInstance.id])}"
                redirect(action:show,id:tripInstance.id)
            }
            else {
                render(view:'edit',model:[tripInstance:tripInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'trip.label', default: 'Trip'), params.id])}"
            redirect(action:list)
        }
    }

    def create = {
        def tripInstance = new Trip()
        tripInstance.properties = params
        return ['tripInstance':tripInstance]
    }

    def save = {
        def tripInstance = new Trip(params)
        if(!tripInstance.hasErrors() && tripInstance.save()) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'trip.label', default: 'Trip'), tripInstance.id])}"
            redirect(action:show,id:tripInstance.id)
        }
        else {
            render(view:'create',model:[tripInstance:tripInstance])
        }
    }
     def search = {
          def tripInstance = new TripCommand()

        if(tripInstance.validateAllParams(params)!=""){
           flash.message=tripInstance.validateAllParams(params)
        }
        tripInstance.commandSetParameters(params)
        def count=tripService.getAllCount(tripInstance)
        if(params?.format && params.format != "html")tripInstance.max=count
        def results=tripService.getAll(tripInstance)
        if(params?.format && params.format != "html"){
            exportToFile(results)
         }
        render(view:'list', model:[ tripInstanceList:results, tripInstanceTotal:count ,tripInstance:tripInstance])
      }
 
}
