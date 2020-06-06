//
//  Model.swift
//  FLC
//
//  Created by Александр on 04.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import Foundation

                        



struct Line : Identifiable, Hashable{
    var id = UUID()
    let name: String
    let MetrPerKg: Double
    let metrs: [Int]
    
    
}
 var lines = [
    Line(name: "0.105", MetrPerKg: 96289, metrs: [50]),
    Line(name: "0.128", MetrPerKg: 64794, metrs: [50]),
    Line(name: "0.148", MetrPerKg: 48465, metrs: [50, 100]),
    Line(name: "0.165", MetrPerKg: 38993, metrs: [50, 100])
    
    
]







