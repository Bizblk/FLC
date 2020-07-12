//
//  FishingLineTableWeight.swift
//  FLC
//
//  Created by Александр on 11.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct FishingLineTableWeight: View {
    
    
    
   // var lines: [FishingLine]
  //  var metr: String
    var products: [product]
    
    var body: some View {

        Section (header: Text("Count of metr ")
            .font(.title)){
                //   Text("Count of metr \(metr)")
                
                ForEach(self.products) { item in
                    HStack {
                        Text(item.dia)
                        Text(item.price)
                        Circle()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.green)
                    //   OrderButton(line: line)
                    }
                    
                }
                
        }
        
    }
}


//struct FishingLineTableWeight_Previews: PreviewProvider {
//    static var previews: some View {
//        FishingLineTableWeight(products: <#[product]#>)
//    }
//}
