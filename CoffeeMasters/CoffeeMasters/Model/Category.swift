//
//  Category.swift
//  CoffeeMasters
//
//  Created by Narasimha Baliga on 8/6/22.
//

import Foundation

struct Category : Decodable, Identifiable {
    var name: String
    var products: [Product] = []
    var id: String {
        return self.name
    }
}
