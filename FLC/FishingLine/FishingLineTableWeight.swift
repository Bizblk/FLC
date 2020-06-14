//
//  FishingLineTableWeight.swift
//  FLC
//
//  Created by Александр on 11.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct FishingLineTableWeight: View {
    
    var lines: [FishingLine]
    var metr: String
    
    
    var body: some View {

        Section (header: Text("Count of metr \(metr)")
            .font(.title)){
         //   Text("Count of metr \(metr)")
     
            ForEach(self.lines) { line in
                HStack {
                    Text(String(line.diametr))
                    Text(String(line.test))
                    Text(String(line.price))
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
        FishingLineTableWeight(lines: testHardLines[0].fishingLines, metr: "50")
    }
}
