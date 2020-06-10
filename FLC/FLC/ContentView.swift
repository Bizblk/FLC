//
//  ContentView.swift
//  FLC
//
//  Created by Александр on 04.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var diametrs = lines
    
    var body: some View {
        
        NavigationView {
            VStack {
                NavigationLink(destination: OrderView()){
                    Text("Go Order ")

                }
                List {
                    ForEach(diametrs[0], content: { line in
                        LineCell(line: line)
                    })
                    
                    
                }
            }
                
                
            .navigationBarTitle("FLC",displayMode: .inline)
            
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
