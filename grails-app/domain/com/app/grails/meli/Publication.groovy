package com.app.grails.meli

class Publication {

	String title
	String description
	Double price
	static belongsTo = User
	
	static constraints = {
		title size:1..100
	}
}
