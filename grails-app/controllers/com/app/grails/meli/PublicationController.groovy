package com.app.grails.meli



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional


class PublicationController {
	
	PublicationService publicationService
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
		
	def index(Integer max) {
		redirect(action:'publish')
	}
	
	def publish() {
		if (request.method == 'POST') {
			def user = session.user
			
			if(user){
				params.user = user.id
				def publication = new Publication(params)
				publication.save()
			}else{
				flash.message("you must be logged in order to publish")
			}
		}
	}
	
	def listByLike() {
		flash.publications = publicationService.findByTitleLike(params.title)
		redirect(url:'/')
	}
}
