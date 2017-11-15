package com.app.grails.meli

class User {

	String username
	String password
	
    static constraints = {
    	username size: 3..10
	}
}
