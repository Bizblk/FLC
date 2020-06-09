//
//  SliderCell.swift
//  FLC
//
//  Created by Александр on 09.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct SliderCell: View {
    
    var item: Spoon
    
    
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack {
                ForEach(item.color, id: \.self, content: {color in
                    
                    VStack {
                        Image(color)
                        .resizable()
                        .frame(width: 250, height: 150)
                        Text("color \(color)")
                            .font(.headline)
                    }
                    
                    
                })
            }
        }
       
        
        
    }
}

struct SliderCell_Previews: PreviewProvider {
    static var previews: some View {
        SliderCell(item: spoons[0])
    }
}
