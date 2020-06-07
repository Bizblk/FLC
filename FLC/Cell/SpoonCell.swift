//
//  CatalogCell.swift
//  FLC
//
//  Created by Виталий Оранский on 08.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct SpoonCell: View {
    
    var item: Spoon
    
    var body: some View {
        Text(item.name)
    }
}

struct SpoonCell_Previews: PreviewProvider {
    static var previews: some View {
        SpoonCell(item: spoons[0])
    }
}
