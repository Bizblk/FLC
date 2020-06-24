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
                    NavigationLink(destination: MainScreen()) {
                        Image("30").resizable().frame(width: 50, height: 50)
                    }
                    TextField("New Order", text: self.$newOrder)
                    Button(action: {
                        let order = Order(context: self.managedObjectContext)
                        order.name = self.newOrder
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
                Section {
                    ForEach(self.order) { order in
                        OrderCell(name: order.name!, createdAt: "\(order.createdAt!)",price: order.price, count: order.count ?? "0" )
                    }.onDelete { indexSet in
                        let deleteItem = self.order[indexSet.first!]
                        self.managedObjectContext.delete(deleteItem)
                        
                        do {
                            try self.managedObjectContext.save()
                        }catch {
                            print(error)
                        }
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
