//
//  OrderButton.swift
//  FLC
//
//  Created by Александр on 24.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct OrderButton: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: Order.getAllOrder()) var order: FetchedResults<Order>
    
    
    var line: FishingLine
    @State private var newOrder = ""
    
    
    var body: some View {
        
        
        
        HStack {
            TextField("New Order", text: self.$newOrder).frame(width: 100)
            Button(action: {
                let order = Order(context: self.managedObjectContext)
                order.count = self.newOrder
                order.price = self.line.price
                order.name = String(self.line.diametr)
                order.createdAt = Date()
                
                do {
                    try self.managedObjectContext.save()
                }catch {
                    print(error)
                }
                self.newOrder = ""
                
            }) {
                Image(systemName: "plus.circle.fill").foregroundColor(.green).imageScale(.large)
            }
        }
        
        
        
    }
    
    
    
    
}

struct OrderButton_Previews: PreviewProvider {
    static var previews: some View {
        OrderButton(line: testHardLines[0].fishingLines[0])
    }
}
