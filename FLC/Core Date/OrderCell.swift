//
//  OrderCell.swift
//  FLC
//
//  Created by Александр on 10.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct OrderCell: View {
    
    var name: String = ""
    var createdAt: String = ""
    var price: Double = 0
    var count: String = ""
    var art: String = ""
    
    
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(art)
                    Text(name).font(.headline)
                    Text(String(price))
                    Text(count)
                    
                    
                    
                }
                Text(createdAt).font(.caption)
            }
            
        }
        
    }
}

struct OrderCell_Previews: PreviewProvider {
    static var previews: some View {
        OrderCell(name: "New Spoon", createdAt: "Today", price: 50, count: "2", art: "687")
    }
}
