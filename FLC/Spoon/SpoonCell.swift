//
//  CatalogCell.swift
//  FLC
//
//  Created by Виталий Оранский on 08.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct SpoonCell: View {
    
    
    
    var body: some View {
        
        ForEach(spoons, content: { item in
            NavigationLink(destination: SpoonDetailCell(item: item)) {
                VStack {
                    Image(item.color[0]).resizable().frame(width: 300, height: 200)
                    Text(item.name).font(.title)
                }
            }.buttonStyle(PlainButtonStyle())
            
            
            
        } )
        
    }
}

struct SpoonCell_Previews: PreviewProvider {
    static var previews: some View {
        SpoonCell()
    }
}
