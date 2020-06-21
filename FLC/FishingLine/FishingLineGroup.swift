//
//  FishingLineGroup.swift
//  FLC
//
//  Created by Александр on 11.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct FishingLineGroup: View {
    var body: some View {
        
        VStack {
            Section(header: Text("HardLine")
                .font(.largeTitle))
            {
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(testHardLines, content: { item in
                            NavigationLink(destination: FishingDetailCell(line: item, lines: item.fishingLines)) {
                                VStack {
                                    Image(item.image).resizable().frame(width: 150, height: 150)
                                    Text(item.name).font(.title)
                                }
                            }.buttonStyle(PlainButtonStyle())
                            
                        } )
                    }
                    
                }
                
            }
            
            Section(header: Text("SportMaxx")
                .font(.largeTitle))
            {
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(testSportMaxx, content: { item in
                            NavigationLink(destination: FishingDetailCell(line: item, lines: item.fishingLines)) {
                                VStack {
                                    Image(item.image).resizable().frame(width: 150, height: 150)
                                    Text(item.name).font(.title)
                                }
                            }.buttonStyle(PlainButtonStyle())
                            
                            
                            
                        } )
                    }
                    
                }
            }
            
        }
        
        
        
        
        
//        VStack {
//
//            Section (header: Text("HardLIne")){
//                ScrollView(.horizontal) {
//                    HStack {
//                        ForEach(testHardLines, content: { line in
//                            VStack {
//                                    Image(line.image).resizable().frame(width: 150, height: 150)
//                                Text(line.name)
//                            }
//
//
//                        })
//                    }
//
//
//                }
//            }
//
//        }
        
        
        
    }
}

struct FishingLineGroup_Previews: PreviewProvider {
    static var previews: some View {
        FishingLineGroup()
    }
}
