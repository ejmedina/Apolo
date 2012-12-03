package apolo

import java.util.Date;

class Trip {
	long id
	String departure
	String arrival
	Date startDate
	Date endDate
	long duration
	long distanceCovered
	float [] coordinates
	static hasOne = [driver:Driver,vehicle:Vehicle]
	//static hasMany = [incident:Incident]
    static constraints = {
		endDate(nullable:true)
		duration(nullable:true)
		distanceCovered(nullable:true)
	}
}
