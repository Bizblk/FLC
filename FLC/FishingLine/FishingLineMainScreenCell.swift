//
//  FishingLineMainScreenCell.swift
//  FLC
//
//  Created by Александр on 09.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct FishingLineMainScreenCell: View {
    
       let item: Catalog
     
     var body: some View {
         
         VStack(){
             
             Image(item.image).resizable().frame(width: 400, height: 120).cornerRadius(15)
             Text(item.name).font(.title)
             
             
         }
         
     
         
     }
}

struct FishingLineMainScreenCell_Previews: PreviewProvider {
    static var previews: some View {
        FishingLineMainScreenCell(item: catalog[1])
    }
}
