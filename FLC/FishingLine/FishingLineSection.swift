//
//  FishingLineSection.swift
//  FLC
//
//  Created by Виталий Оранский on 13.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct FishingLineSection: View {
    
  //  var lines: [FishingLine]
  //  var groupFishingLine: [Int: [FishingLine]] {.init(grouping: lines, by: {$0.metr})}
    var products: [product]
    
    
    
    var body: some View {
            
        
        VStack{
            ForEach(self.products, content:  { item in
                FishingLineTableWeight(products: self.products)
            })
        }
        
//            VStack {
//                ForEach(self.groupFishingLine.keys.sorted()) { line in
//                    FishingLineTableWeight(lines: self.groupFishingLine[line]!, metr: String(line), products: <#[product]#>)
//
//                }
//            }
        
        
    }
        
    
}

struct FishingLineSection_Previews: PreviewProvider {
    static var previews: some View {
        FishingLineSection(products: test)
    }
}
