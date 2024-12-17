//
//  Cars.swift
//  test
//
//  Created by Fatemeh sharifmoghadam on 13/12/24.
//

import SwiftUI

struct Cars: View {
    var item : Car
    var body: some View {
        VStack{
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:400 , height : 250)
                .position(x: 190, y: 100)
                .clipShape(RoundedRectangle(cornerRadius:30))
                .shadow(radius: 10)
                
                .padding()
            
            VStack{
                Text("Name : Z1")
                Text("Price : 20000")
                Text("ProductionYear :1988 ")
                    
            }
            
            
            
            
            .frame (width : 250 , height : 100 , alignment : .center)
                .clipShape(RoundedRectangle(cornerRadius:100))
                .background(Color.orange)
                //.border(Color.green , width : 1)
                .position(x:200, y: 3)
                
            
                
        }
    }
}

#Preview {
    Cars(item : Car.init(name: "Toyota", imageName: "car1" , price: 20000, productionYear: 1988))
}
