//
//  carModel.swift
//  test
//
//  Created by Fatemeh sharifmoghadam on 12/12/24.
//

import SwiftUI

// Car model
struct Car: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var price : Double
    var productionYear: Int
}

// CarBrand model
struct CarBrand: Identifiable {
    var id = UUID()
    var name: String
    var cars: [Car]  // Cars for this brand
    var price : Double
    var productionYear: Int
}

