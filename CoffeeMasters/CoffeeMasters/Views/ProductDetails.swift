//
//  ProductDetailsView.swift
//  CoffeeMasters
//
//  Created by Narasimha Baliga on 8/6/22.
//

import SwiftUI

struct ProductDetails: View {
    
    var product: Product
    @State var quantity = 1
    @EnvironmentObject var cartManager: CartManager
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
            ScrollView {
                AsyncImage(url: product.imageURL)
                    .cornerRadius(5)
                    .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                    .padding(.top, 32)
                Text(product.name)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.leading)
                    .padding(24)
                HStack {
                    Text("$ \(product.price, specifier: "%.2f") ea")
                    Stepper(value: $quantity, in: 1...10) { }
                }
                    .frame(maxWidth: .infinity)
                    .padding(30)
                  
                
                Text("Subtotal $\(Double(quantity)*product.price, specifier:"%.2f")")
                    .bold()
                    .padding(12)
                
                Button("Add \(quantity) to Cart") {
                    cartManager.add(product: product, quantity: quantity)
                }
                    .padding()
                    .frame(width: 250.0)
                    .background(Color("Alternative2"))
                    .foregroundColor(Color.black)
                    .cornerRadius(25)

            }.navigationTitle("Details")
        }
    }

struct ProductDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetails(product: Product(id: 1, name: "Demo", description: "Demo", price: 4.25, image: "DummyProduct"))
    }
}
