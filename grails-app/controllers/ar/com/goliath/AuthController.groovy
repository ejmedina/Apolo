package ar.com.goliath
import grails.converters.*
import org.springframework.security.authentication.AuthenticationManager
import org.springframework.security.core.Authentication;
class AuthController {
	def springSecurityService
	def rememberMeAuthenticationProvider
	def rememberMeServices;
	private AuthenticationManager authenticationManager;
	def post = {
		def message="";
		def user=params?.user
		def pass = springSecurityService.encodePassword(params.pass)
		def u=User.findByUsername(user)
		def json=new JsonToken()
		def tok=PersistToken.findAllByUsername(params?.user)
		if(user && u && !tok){
			if(u.accountLocked){
				json.status=2//"user locked"
			}else if(u.password!=pass){
				json.status=3//"password wrong"
			}else{
				if (tok){
					tok.each{it.delete()}
				}
				springSecurityService.reauthenticate (user ,pass)
				Authentication auth=springSecurityService.getAuthentication()
				//springSecurityService.registerProvider(user)
				//def au=rememberMeAuthenticationProvider.authenticate(auth)
				rememberMeServices.loginSuccess(request, response, auth);
				json.token=PersistToken.findAllByUsername(pojo.username).get(0).token
				json.status=0
			}	
		}

		render json as JSON
	}
	def get={
		def u=PersistToken.findAllByUsername(params?.user)
		def json=new JsonToken()
		if(u){
			json.token=u.get(0).token;
			json.status=0;
		}
		render json as JSON
	}
	def del={
		def json=new JsonToken()
		def u=PersistToken.findAllByUsername(params?.user)
		if(u){
			u.each{it.delete()}
			json.status=0;
		}
		render json as JSON
	}
}
class JsonToken {
	String token
	Integer status=1;
}
