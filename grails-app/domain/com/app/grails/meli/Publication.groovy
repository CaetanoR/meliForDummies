package com.app.grails.meli

import java.util.Date;

class Publication {

	String title
	String description
	Double price
	User user
	Date dateCreated
	static belongsTo = User
	
	static constraints = {
		title size:1..100
	}
}
