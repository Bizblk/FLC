//
//  OrderView.swift
//  FLC
//
//  Created by Александр on 10.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct OrderView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: Order.getAllOrder()) var order: FetchedResults<Order>
    
    @State private var newOrder = ""
    
    var body: some View {
        
        NavigationView {
            
            List {

                HStack {
                    TextField("New Order", text: self.$newOrder)
                    Button(action: {
                        let order = Order(context: self.managedObjectContext)
                        order.name = self.newOrder
                        order.createdAt = Data()
                        
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
                
                
                HStack {
                    ForEach(self.order) { order in
                        OrderCell(name: order.name!, createdAt: "\(order.createdAt!)")
                    }
                    
                    
                }
                
            }
            .navigationBarTitle("Order")
            .navigationBarItems(trailing: EditButton())
            
        }
    
        
    }
    
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
