//
//  CartCell.swift
//  FLC
//
//  Created by Александр on 24.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct CartCell: View {
    
    var createdAt: Date?
    var name: String
    var art: String
    var price: Double
    var count: Int
    
    
    var body: some View {
        
        HStack {
            Text(art)
            Text(name)
            Text(String(price))
            Text(String(count))
        }
    }
}

struct CartCell_Previews: PreviewProvider {
    static var previews: some View {
        CartCell(name: "HardLine", art: "228228228", price: 75.75, count: 10)
    }
}
