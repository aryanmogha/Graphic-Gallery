//
//  CartManager.swift
//  Graphic Gallery
//
//  Created by Aryan Mogha on 04/06/23.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    @Published var paymentSuccess = false
    
    
    // Functions to add and remove from cart
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
    
}

