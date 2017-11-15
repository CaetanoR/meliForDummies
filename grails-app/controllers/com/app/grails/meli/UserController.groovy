package com.app.grails.meli

class UserController {
	
	
	def scaffold = true
	
	def index = {
		
	}
	
	
	def login = {
		redirect(action: "index")
	}
}
