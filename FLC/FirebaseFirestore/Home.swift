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
            List(line.data) {item in
                HStack {
                    Text(item.id)
                    Text(item.group)
                    Text(item.name)
                    Text(item.price)
                    Text(item.dia)
                    Text(item.stock)



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
    @Published var datas = [product]()

    
   
    
    
    public enum names: String {
        case green = "Deep Green"
        case pure = "Pure Transparent"
        case smoke = "Steel Smoke"
        case cherry = "Crerry Blood"
        case ecstasy = "Ecstasy Clear"
        case iguana = "Iguana Green"
        
    }
    
    func getDatas(name: names) -> [product] {
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
                              let stock = item.get("stock") as! String
                              
                              self.datas.append(product(id: id, name: name, price: price, pic: id, group: group, dia: dia, stock: stock))

                          }
                      }
              }
        return data
    }
    
    
    init(name: names ) {
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
                        let stock = item.get("stock") as! String
                        
                        self.data.append(product(id: id, name: name, price: price, pic: id, group: group, dia: dia, stock: stock))

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
    var stock : String
    
}


var test = [
product(id: "qwe", name: "max", price: "123", pic: "123", group: "1322", dia: "22", stock: "true"),
product(id: "dasd", name: "222", price: "12sda3", pic: "1sad23", group: "13sad22", dia: "2asd2", stock: "true"),

]
