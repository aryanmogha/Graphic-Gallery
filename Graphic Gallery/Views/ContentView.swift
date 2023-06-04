//
//  ContentView.swift
//  Graphic Gallery
//
//  Created by Aryan Mogha on 04/06/23.
//

import SwiftUI

struct ContentView: View {
    
    var gridLayout: [GridItem] = [ GridItem() ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 40) {
                    
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                    }
                    
                }
                .padding(.all, 20)
            }
            .navigationBarTitle("Graphic Gallery", displayMode: .inline)
            .toolbar {
                CartButton(numberOfProducts: 1)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
