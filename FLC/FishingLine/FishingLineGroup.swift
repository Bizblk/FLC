//
//  FishingLineGroup.swift
//  FLC
//
//  Created by Александр on 11.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct FishingLineGroup: View {
    var body: some View {
        
        
        VStack {
            
            Section {
                ScrollView(.horizontal) {
                    HStack {
                        Image("30").resizable().frame(width: 150, height: 150)
                        Image("31").resizable().frame(width: 150, height: 150)
                        Image("32").resizable().frame(width: 150, height: 150)
                    }
                }
            }
            Section {
                HStack {
                    Image("35").resizable().frame(width: 150, height: 150)
                    
                }
            }
        }
        
        
        
    }
}

struct FishingLineGroup_Previews: PreviewProvider {
    static var previews: some View {
        FishingLineGroup()
    }
}
