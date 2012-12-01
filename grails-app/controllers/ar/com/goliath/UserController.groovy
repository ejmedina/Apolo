package ar.com.goliath


import java.util.List;

import grails.converters.JSON
import org.codehaus.groovy.grails.commons.ConfigurationHolder
import org.springframework.security.core.Authentication

import ar.com.goliath.api.JsonToken;

class UserController {
    def exportService
    def springSecurityService
	def rememberMeServices
    def userService
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST',isAvailable:'POST']

    def list = {
                 def userInstance = new UserCommand()

        if(userInstance.validateAllParams(params)!=""){
           flash.message=userInstance.validateAllParams(params)
        }
        userInstance.commandSetParameters(params)
        def count=userService.getAllCount(userInstance)
        if(params?.format && params.format != "html")userInstance.max=count
        def results=userService.getAll(userInstance)
        if(params?.format && params.format != "html"){
            exportToFile(results)
         }
	[ userInstanceList:results, userInstanceTotal:count ,userInstance:userInstance]
    }

    def show = {
        def userInstance = User.get( params.id )

        if(!userInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action:list)
        }
        else { return [ userInstance : userInstance ] }
    }

    def delete = {
        def userInstance = User.get( params.id )
        if(userInstance) {
            try {
                userInstance.delete(flush:true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action:list)
        }
    }

    def edit = {
        def userInstance = User.get( params.id )

        if(!userInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action:list)
        }
        else {
            return [ userInstance : userInstance ]
        }
    }

    def update = {
        def userInstance = User.get( params.id )
        if(userInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(userInstance.version > version) {
                 
                    userInstance.errors.rejectValue("version", "user.optimistic.locking.failure", "Otro usuario esta modificando  User mientras usted lo esta editando.")
                    render(view:'edit',model:[userInstance:userInstance])
                    return
                }
            }
            userInstance.properties = params
            if(!userInstance.hasErrors() && userInstance.save()) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])}"
                redirect(action:show,id:userInstance.id)
            }
            else {
                render(view:'edit',model:[userInstance:userInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action:list)
        }
    }

    def create = {
        def userInstance = new User()
        userInstance.properties = params
        return ['userInstance':userInstance]
    }

    def save = {
        def user = new User(params)
		println user as JSON
		if (params.password) {
			user.password = springSecurityService.encodePassword(params.password)
		}
        if (!user.save(flush: true)) {
			render view: 'create', model: [user: user]
			return
		}
		flash.message = "${message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), user.id])}"
		redirect action: edit, id: user.id
    }
     def search = {
          def userInstance = new UserCommand()
		  
        if(userInstance.validateAllParams(params)!=""){
           flash.message=userInstance.validateAllParams(params)
        }
        userInstance.commandSetParameters(params)
        def count=userService.getAllCount(userInstance)
        if(params?.format && params.format != "html")userInstance.max=count
        def results=userService.getAll(userInstance)
        if(params?.format && params.format != "html"){
            exportToFile(results)
         }
        render(view:'list', model:[ userInstanceList:results, userInstanceTotal:count ,userInstance:userInstance])
      }
	 def post = {
		 def u =new JsonToken();
		 def jtString=params?.json
		 def jsonObject = JSONObject.fromObject(jtString);
		 User pojo = JSONObject.toBean(jsonObject, User.class);
		 pojo.password=springSecurityService.encodePassword(pojo.password)
		 if(!pojo.hasErrors() && pojo.save()) {
			 def userRole=Role.findByAuthority("ROLE_USER")
			 if (!pojo.authorities.contains(userRole)) {
				 UserRole.create pojo, userRole
			 }
			 springSecurityService.reauthenticate (pojo.username ,pojo.password)
			 Authentication auth=springSecurityService.getAuthentication()
			 //springSecurityService.registerProvider(user)
			 //def au=rememberMeAuthenticationProvider.authenticate(auth)
			 rememberMeServices.loginSuccess(request, response, auth);
			 u.token=PersistToken.findAllByUsername(pojo.username).get(0).token 

		 }else{
		 	u.status=104
		 }
		 render u as JSON
	 }
	 def put ={
		 def jtString=params?.json
		 def json=new JsonToken();
		 def jsonObject = JSONObject.fromObject(jtString);
		 User pojo = JSONObject.toBean(jsonObject, User.class);
		 def usr=User.findByUsernameAndEmail(pojo.user,pojo.email);
		 if(usr){
			 usr.username=pojo.username
			 usr.password=pojo.password
			 usr.email=pojo.email
			 if(!usr.save()){
				 json.status=106
			 }
		 }else{
		 	json.status=105
		 }
		 render json as JSON
	 }
	 def isAvailable={
		 def jtString=params?.json
		 def jsonObject = JSONObject.fromObject(jtString);
		 User pojo = JSONObject.toBean(jsonObject, User.class);
		 def json=new JsonToken();
		 def usr = User.findByUsername()
		 if(usr){
			 if( usr.username && usr?.email ){
				 json.status=103
			 }else if(usr.username){
				 json.status=101
			 }else if(usr?.email){
				 json.status=102
			 }
		 }
		 render json as JSON
	 }
}
