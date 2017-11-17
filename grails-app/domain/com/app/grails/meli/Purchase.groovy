package com.app.grails.meli

class Purchase {

	User user
	Publication publication
	Date dateCreated
	
	static belongsTo = Publication
    
}
