package com.app.grails.meli

class PurchaseController {
	
    def index() {
		redirect(action: "purchase")
	}
	
	def purchase() {
		def user = session.user
		if(user){
			params.user = user.id
			def purchase = new Purchase(params)
			purchase.save()
			flash.message = "The purchase was successful!"
		}else{
			flash.message = "You must be logged in order to purchase"
		}
		redirect(url:"/")
	}
	
}
