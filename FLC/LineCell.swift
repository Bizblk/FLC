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
    
    
    func sum() -> String{
        
      
        let resultt = String(line.MetrPerKg * (Double(enterTheWeight) ?? 0))
        return resultt
    }
    
    func sumMetr (metr: Int) -> String {
        
        let sum = self.sum()
        let result = String(Int(sum) ?? 1 + metr )
        print(result)
        return result
    }
    
    
    
    var body: some View {
        
        HStack {
            HStack {
                Text(line.name)
                TextField("enter the weight", text: $enterTheWeight).frame(width: 150)
                Text(sum())
                Spacer()
            }
            VStack {
                ForEach(line.metrs, id: \.self, content: {metr in
                    HStack {
                        Text(self.sumMetr(metr: metr))
                       // Text(self.sumMetr(metr: metr))
                        
                    }
                    
                    
                })
            }
        }
        
        
        
        
    }
}

struct LineCell_Previews: PreviewProvider {
    static var previews: some View {
        LineCell()
    }
}
