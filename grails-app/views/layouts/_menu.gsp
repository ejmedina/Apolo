
<div id="fb-root"></div>
<header>
	<div class="inner">
		<a href="#" class="logo left"><img
			src="${createLinkTo(dir:'img',file:'logo.png')}" alt="google.com">
		</a>
	</div>
</header>
<nav id="navigation" class="clearfix">
	<ul class="menu left" id="menu">
		<li><a href="#" class="menulink">Config</a>
			<ul>
				<li><a href="${request.contextPath}/user/index">Users</a></li>
				<li><a href="${request.contextPath}/role/index">Role</a></li>
				<li><a href="${request.contextPath}/requestmap/index">RequestMap</a>
				</li>
			</ul>
		</li>
		<li><a href="#" class="menulink">Crud</a>
			<ul>
				<g:each var="c"
					in="${grailsApplication.controllerClasses.name.sort()}">
					<%if(c!="Rol"&&c!="Roles"&&c!="Role"&&c!="User"&&c!="Logout"&&c!="Register"&&c!="Requestmap"&&c!="Login"&&c!="Person"&&c!="Captcha"
	              &&c!="Inicio"&&c!="AuditoriaBatch"&&c!="SpringSocialConnect"&&c!="SpringSocialFacebook"&&c!="SpringSocialTwitter"&&c!="SpringSocialProviderSignIn"){%>
				  <li><a href="${request.contextPath}/${grails.util.GrailsNameUtils.getPropertyName(c)}/index">${c}</a></li>
	            <%}%>
				</g:each>
			</ul>
		</li>

		<li><a href="#" class="menulink">Auditory</a>
			<ul>
				<li><a
					href="${request.contextPath}/auditoria/index?sort=fechaLog&order=desc">Events</a>
				</li>
				<li><a
					href="${request.contextPath}/auditoriaBatch/index?sort=fechaLog&order=desc">Batch
						Log</a></li>
			</ul>
		</li>
	</ul>
	<ol id="user-log" class="right">
		<sec:ifNotLoggedIn>
			<form action="${resource(file: 'j_spring_security_check')}"
				method='POST' id='loginForm' class='cssform' autocomplete='on'>
				<li><input id='username' type='text'
					onFocus="if (this.value == 'Username') {this.value=''; this.className='text_writing'}"
					onBlur="if (this.value == '') {this.value='Username'; this.className='text_'}"
					class='text_' name='j_username' value="Username" />
				</li>
				<li><input id='password' type='text'
					onFocus="if (this.value == 'Password') {this.type='password'; this.value=''; this.className='text_writing'}"
					onBlur="if (this.value == '') {this.value='Password'; this.type='text'; this.className='text_'}"
					class='text_' name='j_password' value="Password" /></li>
				<li><input id="login-button" type='submit' value='Go!' /></li>
				</li>
			</form>
		</sec:ifNotLoggedIn>
		<sec:ifAllGranted roles="ROLE_ADMIN">
			<li><sec:username /> (<g:link controller="logout">Logout</g:link>)</li>
		</sec:ifAllGranted>
	</ol>
</nav>