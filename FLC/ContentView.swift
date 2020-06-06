//
//  ContentView.swift
//  FLC
//
//  Created by Александр on 04.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var diametrs = lines[0]
    
    var body: some View {
        
        NavigationView {
            
            List {
                ForEach(diametrs, content: { line in
                    LineCell(line: line)
                })
                
                
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
