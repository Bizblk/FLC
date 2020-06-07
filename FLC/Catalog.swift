//
//  Catalog.swift
//  FLC
//
//  Created by Виталий Оранский on 08.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct Catalog: View {
    
    var spoon = spoons
    
    var body: some View {
        
        List {
            ForEach(spoons, content: { item in
                SpoonCell(item: item)
            })
        }
        
    }
}

struct Catalog_Previews: PreviewProvider {
    static var previews: some View {
        Catalog()
    }
}
