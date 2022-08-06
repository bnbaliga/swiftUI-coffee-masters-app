//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Narasimha Baliga on 8/6/22.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    
    var menuManger = MenuManager()
    var cartManager = CartManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManger)
                .environmentObject(cartManager)
        }
    }
}
