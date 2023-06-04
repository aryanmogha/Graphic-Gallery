//
//  Product.swift
//  Graphic Gallery
//
//  Created by Aryan Mogha on 04/06/23.
//

import Foundation

struct Product: Identifiable
{
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Harry Potter and the Sorcerer's Stone", image: "Poster1", price: 499),
                   Product(name: "Harry Potter and the Chamber of Secrets", image: "Poster2", price: 499),
                   Product(name: "Harry Potter and the Prisoner of Azkaban", image: "Poster3", price: 499),
                   Product(name: "Harry Potter and the Goblet of Fire", image: "Poster4", price: 499),
                   Product(name: "Harry Potter and the Order of Phoenix", image: "Poster5", price: 499),
                   Product(name: "Harry Potter and the Half-Blood Prince", image: "Poster6", price: 499),
                   Product(name: "Harry Potter and the Deathly Hallows - Part 1", image: "Poster7", price: 499),
                   Product(name: "Harry Potter and the Deathly Hallows - Part 2", image: "Poster8", price: 499)]
