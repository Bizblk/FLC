//
//  Model.swift
//  FLC
//
//  Created by Александр on 04.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import Foundation

                        

// MARK: Line

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


enum Category: String {
    
    case bait
    case fishingLine
    
    
}


//MARK: BAIT

enum SpinnerType: String {
    case rotate
    case shaker
}



struct Spoon: Identifiable, Hashable {
    
    var id = UUID()
    var name: String
    var weight: [Double]
    var color: [String]
    var availability: Bool
    var price: Double
    var discription: String
    var gategory: Category
    var spinnerType: SpinnerType
    
 }



enum WobblerType: String {
    case minnow
    case fat
}


struct Wobbler: Identifiable, Hashable {
   
    var id = UUID()
    var name: String
    var lengthWeight: [Int: Double]
    var color: [Int]
    var availability: Bool
    var price: Double
    var discription: String
    var gategory: Category
    var wobblerType: WobblerType
   
}


var spoons = [
    
    Spoon(name: "Winger", weight: [16,21,28], color: ["RW","BRW","LM"], availability: true, price: 75, discription: "nice spool", gategory: .bait, spinnerType: .shaker),
    Spoon(name: "SRV", weight: [10.5,14,21], color: ["RW","BRW","LM"], availability: true, price: 75, discription: "nice spool", gategory: .bait, spinnerType: .rotate)
]
var wobblers = [
    
    Wobbler(name: "Dancer", lengthWeight: [100 : 15, 150 : 20], color: [150,700,715], availability: true, price: 150, discription: "nice trolling wobbler", gategory: .bait, wobblerType: .minnow),
    Wobbler(name: "Gaper", lengthWeight: [75 : 10, 90 : 12.5], color: [150,700,715], availability: true, price: 200, discription: "nice  wobbler", gategory: .bait, wobblerType: .fat)
]






//MARK: FishingLine

enum FishingLineType: String {
    case monophilic
    case fluorocarbon
}

struct FishingLine: Identifiable, Hashable {
    
    var id = UUID()
    var name: String
    var diameter: [Double: Double]
    var color: String
    var availability: Bool
    var price: Double
    var discription: String
    var gategory: Category
    var fishingLineType: FishingLineType
    
 }


enum BraidedType: String {
    case x4
    case x8
}

struct BraidedLine: Identifiable, Hashable {
    
    var id = UUID()
    var name: String
    var diameter: [Double: Double]
    var color: String
    var availability: Bool
    var price: Double
    var discription: String
    var gategory: Category
    var braidedType: BraidedType
    
 }


var fishingLines = [
    [
        FishingLine(name: "Megastrong", diameter: [0.261 : 10.2, 0.309 : 14.5], color: "Red", availability: true, price: 90, discription: "nice chamelion line", gategory: .fishingLine, fishingLineType: .monophilic),
        FishingLine(name: "Hardline", diameter: [0.148 : 4.2, 0.161 : 6.1], color: "Transparent", availability: true, price: 90, discription: "nice chamelion line", gategory: .fishingLine, fishingLineType: .fluorocarbon)
    ],
    [
        BraidedLine(name: "Sportmaxx Power", diameter: [15 : 7.5, 20 : 12], color: "Moss Green", availability: true, price: 550, discription: "nice Braided", gategory: .bait, braidedType: .x4),
        BraidedLine(name: "Megastrong", diameter: [10 : 5, 12 : 6.5], color: "Orange", availability: true, price: 350, discription: "OMG 350 price!!!!", gategory: .bait, braidedType: .x8)
        
    ]
    
]





