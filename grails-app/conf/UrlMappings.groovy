class UrlMappings {

	static mappings = {
		"/"(controller:"inicio",action:"index")   //this is your index action.
		"/$controller/$action?/$id?" { constraints { // apply constraints here
			} }

		"500"(view:'/error')
	}
}
