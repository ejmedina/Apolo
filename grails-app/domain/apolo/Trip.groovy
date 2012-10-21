package apolo

import java.util.Date;

class Trip {
	long id
	String departure
	String arrival
	Date startDate
	Date estimatedEndDate
	Date endDate
	long duration
	long distanceCovered
	float [] coordinates
	//static hasOne = [driver:Driver,vehicle:Vehicle]
	//static hasMany = [incident:Incident]
    static constraints = {
    }
}
