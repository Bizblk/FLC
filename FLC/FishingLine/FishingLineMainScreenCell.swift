//
//  FishingLineMainScreenCell.swift
//  FLC
//
//  Created by Александр on 09.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct FishingLineMainScreenCell: View {
    
       let product: Catalog
     
     var body: some View {
         
         VStack(){
             
             Image(product.image).resizable().frame(width: 400, height: 120).cornerRadius(15)
             Text(product.name).font(.title)
             
             
         }
         
     
         
     }
}

struct FishingLineMainScreenCell_Previews: PreviewProvider {
    static var previews: some View {
        FishingLineMainScreenCell(product: catalog[1])
    }
}
