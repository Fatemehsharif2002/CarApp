//
//  ContentView.swift
//  test
//
//  Created by Fatemeh sharifmoghadam on 12/12/24.
//

import SwiftUI

struct ContentView: View {
    
    // Sample data for the car brands
    let carBrands = [
        CarBrand(name: "BMW", cars: [
            Car(name: "BMW Z1", imageName: "z1", price: 20000,productionYear: 20),
            Car(name: "BMW 507", imageName: "507", price: 4500, productionYear: 2005)
        ], price: 900, productionYear: 20),
        CarBrand(name: "Audi", cars: [
            Car(name: "Audi A4", imageName: "a4", price: 789,productionYear: 20),
            Car(name: "Audi Q7", imageName: "q7", price: 690, productionYear: 2002)
        ], price: 578,productionYear: 30),
        CarBrand(name: "Mercedes", cars: [
            Car(name: "Mercedes Benz A-Class", imageName: "aclass", price: 345,productionYear: 20),
            Car(name: "Mercedes Benz S-Class", imageName: "sclass", price: 6888,productionYear: 20)
        ], price: 6768,productionYear: 20)
    ]
    
    var body: some View {
        NavigationStack {
            List(carBrands) { brand in
                NavigationLink( destination: CarBrandDetailView(carBrand: brand)){
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
            .navigationTitle("Car Brands")
        }
    }
}

#Preview {
    ContentView()
}

