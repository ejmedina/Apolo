package apolo

import java.util.Date;

class User {
	long id
	String name
	String password
	Date registration
	String status
	//static hasMany = [incidents:Incident]
    static constraints = {
    }
}
