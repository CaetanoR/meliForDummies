package com.app.grails.meli

import grails.transaction.Transactional

@Transactional
class PurchaseService {

    def purchase(def params) {
		Purchase purchase = new Purchase(params)
		purchase.save()
    }
}
