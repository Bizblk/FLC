//
//  AddCart.swift
//  FLC
//
//  Created by Александр on 24.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct AddCart: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: Order.getAllOrder()) var order: FetchedResults<Order>
    
    
    @State private var addToCart = ""
    
    var body: some View {
        HStack {
            Spacer(minLength: 250)
            TextField("enter count" , text: self.$addToCart).keyboardType(.numberPad)
            Button(action: {
                let order = Order(context: self.managedObjectContext)
                order.name = self.addToCart
                order.createdAt = Date()
                
                do {
                    try self.managedObjectContext.save()
                }catch {
                    print(error)
                }
                self.addToCart = ""
                
            }) {
                Image(systemName: "plus.circle.fill").foregroundColor(.green).imageScale(.large)
            }
        }

}
}
struct AddCart_Previews: PreviewProvider {
    static var previews: some View {
        AddCart()
    }
}
