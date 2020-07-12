//
//  MainScreenCell.swift
//  FLC
//
//  Created by Александр on 12.07.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct MainScreenCell: View {
    
    let category: Catalog

    
    var body: some View {
        
        VStack(){
                  
                  Image(category.image).resizable().frame(width: 400, height: 120).cornerRadius(15)
                  Text(category.name).font(.title)
                  
                  
              }
        
    }
}

struct MainScreenCell_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenCell(category: catalog[0])
    }
}
