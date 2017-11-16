package com.app.grails.meli

class User {

	String username
	String password
	static hasMany = [publications: Publication]
	static mapping = {
		joinTable: false
	}
	
	
    static constraints = {
    	username size: 3..10
	}
}
