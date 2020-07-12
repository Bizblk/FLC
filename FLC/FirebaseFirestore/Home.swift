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
                    Text(item.metrs)



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

    
   
    
    
    
    
    func getDatas(name: FishingLineNames) -> [product] {
        print("GetdatasStart")
        var testttt = [product]()

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
                              let metrs = item.get("metrs") as! String
                              print("GetdatasStart - for")

                            testttt.append(product(id: id, name: name, price: price, pic: id, group: group, dia: dia, stock: stock, metrs: metrs))

                          }
                      }
              }
        return testttt
    }
    
    
    init(name: FishingLineNames ) {
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
                        let metrs = item.get("metrs") as! String
                        
                        self.data.append(product(id: id, name: name, price: price, pic: id, group: group, dia: dia, stock: stock, metrs: metrs))

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
    var metrs : String
    
}


var test = [
    product(id: "qwe", name: "max", price: "123", pic: "123", group: "1322", dia: "22", stock: "true", metrs: "100"),
    product(id: "dasd", name: "222", price: "12sda3", pic: "1sad23", group: "13sad22", dia: "2asd2", stock: "true", metrs: "50"),

]
