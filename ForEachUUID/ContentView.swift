//
//  ContentView.swift
//  ForEachUUID
//
//  Created by Francisco Jean on 24/02/25.
//

import SwiftUI

struct ContentView: View {
    
    let users = ["Max", "Anna", "Chris"]
    
    struct Product {
        var id: Int
        var productName: String
        var productPrice: Double
    }
    
    let products = [
        Product(id: 001, productName: "Box", productPrice: 22),
        Product(id: 002, productName: "Chopstick", productPrice: 30),
        Product(id: 003, productName: "Bottle", productPrice: 15)
    ]
    
    var body: some View {
        VStack {
            ForEach(users, id: \.self) { user in
                Text(user)
            }
            Divider()
            ForEach(products, id: \.id) { product in 
                VStack {
                    Text(product.productName)
                    Text(String(format: "%.2f", product.productPrice))
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
