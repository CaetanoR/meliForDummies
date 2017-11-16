package com.app.grails.meli

class Purchase {

	User user
	Publication publication
	
	static belongsTo = Publication
    
}
