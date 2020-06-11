//
//  SpoonDetailCell.swift
//  FLC
//
//  Created by Александр on 09.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct SpoonDetailCell: View {
    
    let item:  Spoon
    
    
    var body: some View {
        
        VStack {
            Image(item.color[0])
                .resizable()
                .frame(width: 400, height: 300)
            Spacer()
            
            ScrollView {
                Text(item.discription)
                .multilineTextAlignment(.center)
            }
            
            Text(String(item.price))
            SpoonTableWeight(item: item)
            SliderCell(item: item)
            
            
        }
        
                  
        
        
        
    }
}

struct SpoonDetailCell_Previews: PreviewProvider {
    static var previews: some View {
        SpoonDetailCell(item: spoons[0])
    }
}
