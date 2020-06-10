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
    
    
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                Text(name).font(.headline)
                Text(createdAt).font(.caption)
            }
            
        }
        
    }
}

struct OrderCell_Previews: PreviewProvider {
    static var previews: some View {
        OrderCell(name: "New Spoon", createdAt: "Today")
    }
}
