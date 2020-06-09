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
        
        
        
        VStack() {
            NavigationView {
                
                
                VStack {
                    NavigationLink(destination: SpoonCell()) {
                        SpoonMainScreenCell(item: catalog[0])
                    }.buttonStyle(PlainButtonStyle())
                    
                    FishingLineMainScreenCell(item: catalog[1])
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
