//
//  CarBrandDetailView.swift
//  test
//
//  Created by Fatemeh sharifmoghadam on 12/12/24.
//

import SwiftUI

struct CarBrandDetailView: View {
    var carBrand: CarBrand
    
    var body: some View {
        VStack {
            Text(carBrand.name)
                .font(.largeTitle)
                .padding(.top, 20)
            
            List(carBrand.cars) { car in
                NavigationLink(destination: Cars(item: car)) {
                    
                    HStack {
                        Image(car.imageName) // Use the car's image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                        
                        Text(car.name) // Display the car's name
                            .font(.headline)
                            .padding(.leading, 10)
                    }
                    .padding(.vertical, 10)
                }
                .navigationTitle("Cars of \(carBrand.name)")
            }
            .padding(.horizontal, 10)
        }
    }
}
    
    #Preview {
        CarBrandDetailView(carBrand: CarBrand(name: "BMW", cars: [
            Car(name: "BMW Z4", imageName: "z4", price: 20000,productionYear: 20),
            Car(name: "BMW M3", imageName: "m3", price: 20000,productionYear: 20)
        ], price: 20000,productionYear: 20))
    }


