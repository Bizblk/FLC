//
//  FishingDetailCell.swift
//  FLC
//
//  Created by Александр on 11.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct FishingDetailCell: View {
    
    var product: FishingLines
    var products: [product]
    
    var body: some View {
        VStack {
            VStack {
                Image(product.image).resizable().frame(width: 250, height: 250)
                Text(product.name)

            }
            VStack {
                Text("Woe")
                    .multilineTextAlignment(.center)
                    .lineLimit(7)
                ScrollView {
                    FishingLineSection(products: self.products)
                }
            }
        }
        
    }
}

struct FishingDetailCell_Previews: PreviewProvider {
    static var previews: some View {
        FishingDetailCell(product: testSportMaxx[0], products: test)
    }
}
