//
//  LineCell.swift
//  FLC
//
//  Created by Александр on 04.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

var diametr = lines

struct LineCell: View {
    
    var line = lines[3]
    
    @State var enterTheWeight = ""
    
    
    func countOfSpool (metr: Int) -> String {
        
        
        let result = String(Int(line.MetrPerKg * (Double(enterTheWeight) ?? 0) / Double(metr)))
        print(result)
        return result
    }
    
    
    
    var body: some View {
        
        VStack {
            HStack() {
                Spacer(minLength: 10)
                Text("Dia")
                Spacer(minLength: 160)
                Text("Metr/Spool")
                Spacer()
                Text("Count/Spool")
                Spacer(minLength: 30)
            }
            HStack {
                
                HStack {
                    Spacer()
                    Text(line.name)
                    TextField("enter the weight", text: $enterTheWeight).frame(width: 140)
                    Spacer()
                }
                VStack {
                    ForEach(line.metrs, id: \.self, content: {metr in
                        HStack {
                            Text(String(metr))
                                .frame(width: 50.0)
                            Spacer()
                            Text(self.countOfSpool(metr: metr))
                                .multilineTextAlignment(.center)
                            Spacer(minLength: 20)
                            
                            
                        }
                        
                        
                    })
                }
            }
        }
        
        
        
        
        
        
    }
}

struct LineCell_Previews: PreviewProvider {
    static var previews: some View {
        LineCell()
    }
}
