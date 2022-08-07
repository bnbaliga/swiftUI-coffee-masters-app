//
//  ProductListing.swift
//  CoffeeMasters
//
//  Created by Narasimha Baliga on 8/6/22.
//

import SwiftUI

struct ProductList: View {
    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menuManager.menu) { category in
                    Text(category.name)
                        .font(.headline)
                    ForEach(category.products) { product in
                        NavigationLink(destination: {
                            ProductDetails(product: product)
                        },
                        label:{
                            ProductListItem(product: product)
                        })
                    }
                }
            }.navigationTitle("Products")
        }
    }
}

struct ProductListing_Previews: PreviewProvider {
    static var previews: some View {
        ProductList()
            .environmentObject(MenuManager())
    }
}
