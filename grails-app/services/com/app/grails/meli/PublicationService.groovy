package com.app.grails.meli

import grails.transaction.Transactional

@Transactional
class PublicationService {

    def findByTitleLike(String query) {
		Publication.findAllByTitleLike("%${query}%")
	}
	
}
