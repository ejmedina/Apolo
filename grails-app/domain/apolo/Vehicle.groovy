package apolo

class Vehicle {
	long id
	String brand
	String model
	String version
	int year
	int cargo
	boolean foodAble
	float height
	float lenght
	float wide
	int weight
	String licenceRequired
	boolean freezerAble
	String status
	String fuelType
	//static hasMany = [trips:Trip,incidents:Incident]
    static constraints = {
    }
}
