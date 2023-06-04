//
//  ContentView.swift
//  Graphic Gallery
//
//  Created by Aryan Mogha on 04/06/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var gridLayout: [GridItem] = [ GridItem() ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 40) {
                    
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                    
                }
                .padding(.all, 20)
            }
            .navigationBarTitle("Graphic Gallery", displayMode: .inline)
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
