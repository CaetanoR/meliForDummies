package com.app.grails.meli

import grails.transaction.Transactional

@Transactional
class UserService {
	
	def findUser(def username, def password){
		User.findByUsernameAndPassword(username, password)
	}
}
