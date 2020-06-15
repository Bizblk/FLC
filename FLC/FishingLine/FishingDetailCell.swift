//
//  FishingDetailCell.swift
//  FLC
//
//  Created by Александр on 11.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct FishingDetailCell: View {
    
    var lines: [FishingLines]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack() {
                ForEach(lines, content: { line in
                    Section {
                        VStack {
                            Image(line.image).resizable().frame(width: 250, height: 200)
                            Text(line.discription)
                                .multilineTextAlignment(.center)
                                .lineLimit(7)
                            
                            
                            ScrollView {
                                FishingLineSection()
                            }
                            
                        }
                    }
                })
                
            }
        }
        
      
        
            
            
        
    }
}

struct FishingDetailCell_Previews: PreviewProvider {
    static var previews: some View {
        FishingDetailCell(lines: testHardLines)
    }
}
