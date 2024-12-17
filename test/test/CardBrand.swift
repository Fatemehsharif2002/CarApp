//
//  CardBrand.swift
//  test
//
//  Created by Fatemeh sharifmoghadam on 13/12/24.
//

import SwiftUI

struct CardBrand: View {
    var brand: Car = Car(
        name: "Toyota",
        imageName: "BMW Z1",
        price: 33,
        productionYear: 202
    )
    
    var body: some View {
        VStack {
            Image(brand.name.lowercased()) // Use the brand name as the image name
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .padding()
            
            Text(brand.name)
                .font(.headline)
                .padding(.top, 10)
        }
    }
}

#Preview {
    CardBrand()
}
