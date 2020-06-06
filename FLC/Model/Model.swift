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
    [
        Line(name: "0.105", MetrPerKg: 96289, metrs: [50]),
        Line(name: "0.128", MetrPerKg: 64794, metrs: [50]),
        Line(name: "0.148", MetrPerKg: 48465, metrs: [50, 100]),
        Line(name: "0.165", MetrPerKg: 38993, metrs: [50, 100]),
        Line(name: "0.181", MetrPerKg: 32404, metrs: [50, 100]),
        Line(name: "0.203", MetrPerKg: 25761, metrs: [50, 100]),
        Line(name: "0.234", MetrPerKg: 19388, metrs: [50, 100]),
        Line(name: "0.261", MetrPerKg: 15584, metrs: [50, 100]),
        Line(name: "0.286", MetrPerKg: 12978, metrs: [100]),
        Line(name: "0.309", MetrPerKg: 11118, metrs: [100]),
        Line(name: "0.331", MetrPerKg: 9689, metrs: [100]),
        Line(name: "0.370", MetrPerKg: 7754, metrs: [100]),
        Line(name: "0.405", MetrPerKg: 6472, metrs: [100]),
        Line(name: "0.496", MetrPerKg: 4315, metrs: [100]),
        Line(name: "0.16", MetrPerKg: 25302, metrs: [25]),
        Line(name: "0.19", MetrPerKg: 17943, metrs: [25]),
        Line(name: "0.21", MetrPerKg: 14688, metrs: [25]),
        Line(name: "0.23", MetrPerKg: 12244, metrs: [25])
    ]
    ,[
        Line(name: "0.35", MetrPerKg: 5288, metrs: [50]),
        Line(name: "0.41", MetrPerKg: 3853, metrs: [50]),
        Line(name: "0.45", MetrPerKg: 3199, metrs: [50]),
        Line(name: "0.50", MetrPerKg: 2591, metrs: [50])
    ]
    
]







