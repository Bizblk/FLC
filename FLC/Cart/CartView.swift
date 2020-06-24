//
//  CartView.swift
//  FLC
//
//  Created by Александр on 24.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct CartView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: Cart.getAllOrder()) var cart: FetchedResults<Cart>
    
    @State private var count = ""
    
    
    var body: some View {
        
        NavigationView {
            List {
                HStack {
                    TextField("Enter Count", text: self.$count)
                    Button(action: {
                        let cart = Cart(context: self.managedObjectContext)
                        cart.count = Int(self.count) ?? 0
                        cart.createdAt = Date()
                        
                        do {
                            try self.managedObjectContext.save()
                        }catch {
                            print(error)
                        }
                        self.count = ""
                        
                    }) {
                        Image(systemName: "plus.circle.fill").foregroundColor(.green).imageScale(.large)
                    }
                }
                Section {
                    ForEach(self.cart) { cart in
                        CartCell(name: "testddd" , art: "999", price: 90, count: cart.count)
                    }.onDelete { indexSet in
                        let deleteItem = self.cart[indexSet.first!]
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

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
