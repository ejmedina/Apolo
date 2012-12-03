package apolo

class License {
	long id
	String type
	String description
    static constraints = {
		description(nullable:true)
		type(blank:false)
    }
}
