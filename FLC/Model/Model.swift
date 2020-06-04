//
//  Model.swift
//  FLC
//
//  Created by Александр on 04.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import Foundation

                        


enum Metr: Int {
    case twentyFive = 25
    case fifty = 50
    case hundred = 100
    case hundredFifty = 150
}




struct Line : Identifiable{
    var id = UUID()
    let name: String
    let MetrPerKg: Double
    
    
}
 var lines = [
    Line(name: "0.105", MetrPerKg: 96289),
    Line(name: "0.128", MetrPerKg: 64794),
    Line(name: "0.148", MetrPerKg: 48465),
    Line(name: "0.165", MetrPerKg: 38993)
]







