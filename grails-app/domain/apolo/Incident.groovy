package apolo

import java.util.Date;

class Incident {
	long id
	Date date
	//static hasOne = [driver:Driver,vehicle:Vehicle,informer:User]
	String description
    static constraints = {
    }
}
