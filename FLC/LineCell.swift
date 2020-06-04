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
    
    var line = lines[0]
    @State var enterTheWeight = ""
    @State var result = "0"
    
    
    var body: some View {
        
        HStack{
            Text(line.name)
            TextField("enter the weight", text: $enterTheWeight)
            Text( "\(line.MetrPerKg * Double(enterTheWeight)!)")
        }
    }
}

struct LineCell_Previews: PreviewProvider {
    static var previews: some View {
        LineCell()
    }
}
