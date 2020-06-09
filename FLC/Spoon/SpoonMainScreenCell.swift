//
//  CatalogCell.swift
//  FLC
//
//  Created by Виталий Оранский on 08.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct SpoonMainScreenCell: View {
    
     let item: Catalog
    
    var body: some View {
        
        VStack(){
            
            Image(item.image).resizable().frame(width: 400, height: 120).cornerRadius(15)
            Text(item.name).font(.title)
            
            
        }
        
    
        
    }
}

struct MainScreenCell_Previews: PreviewProvider {
    static var previews: some View {
        SpoonMainScreenCell(item: catalog[0])
    }
}
