//
//  FishingLineSection.swift
//  FLC
//
//  Created by Виталий Оранский on 13.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct FishingLineSection: View {
    
    var groupFishingLine: [Int: [FishingLine]] {.init(grouping: hardLines, by: {$0.metr})}

    
    
    
    var body: some View {
            
        
            VStack {
                ForEach(self.groupFishingLine.keys.sorted()) { line in
                    FishingLineTableWeight(lines: self.groupFishingLine[line]!, metr: String(line))
                    
                }
            }
        
        
    }
        
    
}

struct FishingLineSection_Previews: PreviewProvider {
    static var previews: some View {
        FishingLineSection()
    }
}
