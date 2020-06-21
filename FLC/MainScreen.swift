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
                    
                    
                    NavigationLink(destination: FishingLineGroup()) {
                    FishingLineMainScreenCell(item: catalog[1])
                    }.buttonStyle(PlainButtonStyle())
                    
                    
                    NavigationLink(destination: OrderView()) {
                        Text("Go to Order").font(.largeTitle)
                    }.buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Go to Calculator").font(.largeTitle)
                    }.buttonStyle(PlainButtonStyle())
                    
                    
                    
                    
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
