package apolo


import org.codehaus.groovy.grails.commons.ConfigurationHolder
class OrganizationController {
    def exportService
   
    def organizationService
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
                 def organizationInstance = new OrganizationCommand()

        if(organizationInstance.validateAllParams(params)!=""){
           flash.message=organizationInstance.validateAllParams(params)
        }
        organizationInstance.commandSetParameters(params)
        def count=organizationService.getAllCount(organizationInstance)
        if(params?.format && params.format != "html")organizationInstance.max=count
        def results=organizationService.getAll(organizationInstance)
        if(params?.format && params.format != "html"){
            exportToFile(results)
         }
	[ organizationInstanceList:results, organizationInstanceTotal:count ,organizationInstance:organizationInstance]
    }

    def show = {
        def organizationInstance = Organization.get( params.id )

        if(!organizationInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'organization.label', default: 'Organization'), params.id])}"
            redirect(action:list)
        }
        else { return [ organizationInstance : organizationInstance ] }
    }

    def delete = {
        def organizationInstance = Organization.get( params.id )
        if(organizationInstance) {
            try {
                organizationInstance.delete(flush:true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'organization.label', default: 'Organization'), params.id])}"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'organization.label', default: 'Organization'), params.id])}"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'organization.label', default: 'Organization'), params.id])}"
            redirect(action:list)
        }
    }

    def edit = {
        def organizationInstance = Organization.get( params.id )

        if(!organizationInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'organization.label', default: 'Organization'), params.id])}"
            redirect(action:list)
        }
        else {
            return [ organizationInstance : organizationInstance ]
        }
    }

    def update = {
        def organizationInstance = Organization.get( params.id )
        if(organizationInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(organizationInstance.version > version) {
                 
                    organizationInstance.errors.rejectValue("version", "organization.optimistic.locking.failure", "Otro usuario esta modificando  Organization mientras usted lo esta editando.")
                    render(view:'edit',model:[organizationInstance:organizationInstance])
                    return
                }
            }
            organizationInstance.properties = params
            if(!organizationInstance.hasErrors() && organizationInstance.save()) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'organization.label', default: 'Organization'), organizationInstance.id])}"
                redirect(action:show,id:organizationInstance.id)
            }
            else {
                render(view:'edit',model:[organizationInstance:organizationInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'organization.label', default: 'Organization'), params.id])}"
            redirect(action:list)
        }
    }

    def create = {
        def organizationInstance = new Organization()
        organizationInstance.properties = params
        return ['organizationInstance':organizationInstance]
    }

    def save = {
        def organizationInstance = new Organization(params)
        if(!organizationInstance.hasErrors() && organizationInstance.save()) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'organization.label', default: 'Organization'), organizationInstance.id])}"
            redirect(action:show,id:organizationInstance.id)
        }
        else {
            render(view:'create',model:[organizationInstance:organizationInstance])
        }
    }
     def search = {
          def organizationInstance = new OrganizationCommand()

        if(organizationInstance.validateAllParams(params)!=""){
           flash.message=organizationInstance.validateAllParams(params)
        }
        organizationInstance.commandSetParameters(params)
        def count=organizationService.getAllCount(organizationInstance)
        if(params?.format && params.format != "html")organizationInstance.max=count
        def results=organizationService.getAll(organizationInstance)
        if(params?.format && params.format != "html"){
            exportToFile(results)
         }
        render(view:'list', model:[ organizationInstanceList:results, organizationInstanceTotal:count ,organizationInstance:organizationInstance])
      }
 
}
