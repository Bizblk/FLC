//
//  FishingDetailCell.swift
//  FLC
//
//  Created by Александр on 11.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct FishingDetailCell: View {
    var body: some View {
        VStack {
        VStack {
            Image("30").resizable().frame(width: 300, height: 300)
            Text("Уникальное высокотехнологичное покрытие-хамелеон, в основе которого флюорокарбон - особенность лесок бренда Chimera обширного семейства Hardline. В чем его преимущество? Во-первых, оно способно менять оттенки, 'подстраиваясь' под окружающую среду. Это обеспечивает маскировку в любых условиях, что важно при охоте на осторожную рыбу. Во-вторых, покрытие увеличивает износостойкость. Защищает от ультрафиолета. А это, соответственно, продлевает срок службы лески. В качестве материала для самой мононити Chimera Hardline используется модифицированный полимер. Он обеспечивает большую прочность, как линейную, так и на узлах. При этом данная леска не жесткая. Практически не обладает памятью. Отличается высокой сенсорикой. Серия - тонущая, что может влиять на заглубление воблера. Кроме ловли на спиннинг, бейткастинга, линейка подойдет и для поплавочной, и донной рыбалки. Представители бренда Chimera, который является российским, подчеркивают, что выпускается Hardline-хамелеон в Японии.")
                .multilineTextAlignment(.center)
                .lineLimit(7)
        }
            Section {
                ScrollView {
                    FishingLineTableWeight()
                    FishingLineTableWeight()
                    FishingLineTableWeight()
                    FishingLineTableWeight()
                    FishingLineTableWeight()
                    FishingLineTableWeight()
                    FishingLineTableWeight()
                    FishingLineTableWeight()
                    FishingLineTableWeight()
                    
                }
                
                
                
                
            }
        }
    }
}

struct FishingDetailCell_Previews: PreviewProvider {
    static var previews: some View {
        FishingDetailCell()
    }
}
