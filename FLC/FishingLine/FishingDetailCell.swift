//
//  FishingDetailCell.swift
//  FLC
//
//  Created by Александр on 11.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct FishingDetailCell: View {
    
    var line: FishingLines
    var lines: [FishingLine]
    
    var body: some View {
        VStack {
            VStack {
                Image(line.image).resizable().frame(width: 250, height: 250)
                Text(line.discription)

            }
            VStack {
                Text("Woe")
                    .multilineTextAlignment(.center)
                    .lineLimit(7)
                ScrollView {
                    FishingLineSection(lines: lines)
                }
            }
        }
        
    }
}

struct FishingDetailCell_Previews: PreviewProvider {
    static var previews: some View {
        FishingDetailCell(line: testHardLines[0], lines: hardLines)
    }
}
