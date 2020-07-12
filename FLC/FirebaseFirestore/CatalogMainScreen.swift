//
//  CatalogMainScreen.swift
//  FLC
//
//  Created by Александр on 12.07.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct CatalogMainScreen: View {
    var body: some View {
        
        
        VStack {
            ForEach (catalog, content: {item in
                MainScreenCell(category: item)
            })
            
        }
    }
}

struct CatalogMainScreen_Previews: PreviewProvider {
    static var previews: some View {
        CatalogMainScreen()
    }
}
