package com.app.grails.meli

import grails.transaction.Transactional

@Transactional
class PublicationService {
	
    def search(String query) {
		Publication.findAllByTitleLike("%${query}%")
	}

}
