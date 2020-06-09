//
//  SpoonTableWeight.swift
//  FLC
//
//  Created by Александр on 09.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct SpoonTableWeight: View {
    
    var item: Spoon
    
    var body: some View {
        
        
        
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.black, lineWidth: 3)
                .frame(width: 300, height: 100)
            VStack(spacing: 15.0) {
                Text("Weight")
                HStack {
                    ForEach(item.weight, id: \.self,  content: { weight in
                        Text(String(weight))
                    })
                }
            }
            
            
        }
    }
}

struct SpoonTableWeight_Previews: PreviewProvider {
    static var previews: some View {
        SpoonTableWeight(item: spoons[0])
    }
}

