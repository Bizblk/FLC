//
//  FishingLineTableWeight.swift
//  FLC
//
//  Created by Александр on 11.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct FishingLineTableWeight: View {
    var body: some View {

        ZStack {
            RoundedRectangle(cornerRadius: 15)
                   .stroke(Color.black, lineWidth: 3)
                   .frame(width: 350, height: 100)
            HStack {
                
                           HStack {
                               Text("Dia 0.161")
                               Text("Test 3kg")
                               Circle()
                                   .frame(width: 15, height: 15)
                                   .foregroundColor(.green)
                           }
            }
           

        }
    
       


    }
}

struct FishingLineTableWeight_Previews: PreviewProvider {
    static var previews: some View {
        FishingLineTableWeight()
    }
}
