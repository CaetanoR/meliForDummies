package com.app.grails.meli

import static org.springframework.http.HttpStatus.*

class UserController {

	UserService userService
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def scaffold = true
	
	def login = {
		if (request.method == 'POST') {
			def user = userService.findUser(params.username, params.password)
			if (user) {
				session.user = user
				redirect(url:'/')
			} else {
				flash.message = "User not found"
				redirect(action:'login')
			}
		} 
	}
 
	def logout = {
		session.invalidate()
		redirect(url:'/')
	}
	
	def index(Integer max) {
        redirect(action:'login')
    }
}
