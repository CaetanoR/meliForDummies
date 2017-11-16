package com.app.grails.meli

class Publication {

	String title
	String description
	Double price
	User user
	static belongsTo = User
	
	static constraints = {
		title size:1..100
	}
}
