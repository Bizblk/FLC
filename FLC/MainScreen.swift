//
//  Catalog.swift
//  FLC
//
//  Created by Виталий Оранский on 08.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct MainScreen: View {
            
    var body: some View {
        
        
        
        VStack {
            NavigationView {
                
                List {
                    ForEach(catalog, content: { item in
                        MainScreenCell(item: item)
                    })
                }
                .navigationBarTitle("Catalog", displayMode: .inline)
            }
            
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
