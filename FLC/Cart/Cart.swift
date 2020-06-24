//
//  Cart.swift
//  FLC
//
//  Created by Александр on 24.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import Foundation
import CoreData



public class Cart: NSManagedObject, Identifiable {
    
    @NSManaged public var createdAt: Date?
    @NSManaged public var name: String
    @NSManaged public var art: String
    @NSManaged public var price: Double
    @NSManaged public var count: Int


    
}


extension Cart {
    
    static func getAllOrder() -> NSFetchRequest<Cart> {
        let request: NSFetchRequest<Cart> = Cart.fetchRequest() as! NSFetchRequest<Cart>
        
        let sortDiscriptor = NSSortDescriptor(key: "createdAt", ascending: true)
        
        request.sortDescriptors = [sortDiscriptor]
        
        return request
    }
    
}
