//
//  Order.swift
//  FLC
//
//  Created by Александр on 10.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import Foundation
import CoreData

public class Order: NSManagedObject, Identifiable {
    
    @NSManaged public var createdAt: Date?
    @NSManaged public var name: String?

    
}


extension Order {
    
    static func getAllOrder() -> NSFetchRequest<Order> {
        let request: NSFetchRequest<Order> = Order.fetchRequest() as! NSFetchRequest<Order>
        
        let sortDiscriptor = NSSortDescriptor(key: "createdAt", ascending: true)
        
        request.sortDescriptors = [sortDiscriptor]
        
        return request
    }
    
}
