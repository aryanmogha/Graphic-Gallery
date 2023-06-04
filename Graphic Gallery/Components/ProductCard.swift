//
//  ProductCard.swift
//  Graphic Gallery
//
//  Created by Aryan Mogha on 04/06/23.
//

import SwiftUI

struct ProductCard: View {
    //@EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(alignment: .leading, spacing: 5) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 320)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)")
                        .font(.caption)
                }
                .padding(15)
                .frame(width: 320, height: 90, alignment: .leading)
                .background(.gray)
                .cornerRadius(30)
            }
            .frame(width: 320, height: 500)
            .shadow(radius: 3)
            
            Button {
                //cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .bold()
                    .foregroundColor(.black)
                    .background(.white)
                    .cornerRadius(50)
                    .padding(15)
            }
        }
        .frame(width: 320, height: 500)
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
        //.environmentObject(CartManager())
    }
}
