//
//  Home.swift
//  FLC
//
//  Created by Александр on 10.07.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI
import Firebase

struct Home: View {
    
    @ObservedObject var line = GetData.init(name: .pure)
    
    var body: some View {
        
        VStack{
            List(line.data) {i in
                HStack {
                    Text(i.id)
                    Text(i.group)
                    Text(i.name)
                    Text(i.price)
                    Text(i.dia)



                }
                
            }
        }
        
        
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}





class GetData: ObservableObject {
    @Published var data = [product]()
    
    enum fishing: String{
        case green = "Deep Green"
        case pure = "Pure Transparent"
    }
    
   
    
    
    init(name: fishing ) {
        let db = Firestore.firestore()
        db.collection("Sportmaxx").whereField("name", isEqualTo: name.rawValue)
            .getDocuments { (querySnapshot, err) in
                if  err != nil {
                    print((err?.localizedDescription)!)
                } else {
                    for item in querySnapshot!.documents {
                        let id = item.documentID
                        let name = item.get("name") as! String
                        let price = item.get("price") as! String
                        let group = item.get("group") as! String
                        let dia = item.get("diameter") as! String
                        
                        self.data.append(product(id: id, name: name, price: price, pic: id, group: group, dia: dia))

                    }
                }
        }
    }
}


struct product: Identifiable {
    
    var id : String
    var name : String
    var price : String
    var pic : String
    var group : String
    var dia : String
    
}
