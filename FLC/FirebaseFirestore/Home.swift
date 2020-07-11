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
    
    @ObservedObject var categories = getCategoriesData()
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


class getCategoriesData: ObservableObject {
    @Published var datas = [category]()
    
    
    init() {
        let db = Firestore.firestore()
        db.collection("Sportmaxx").addSnapshotListener { (snap, err) in
            if err != nil{
                print((err?.localizedDescription)!)
                return
            }
            for i in snap!.documentChanges{
                let id = i.document.documentID
                let name = i.document.get("name") as! String
                let price = i.document.get("price") as! String
                let group = i.document.get("group") as! String
                let dia = i.document.get("diameter") as! String
                
                self.datas.append(category(id: id, name: name, price: price, pic: id, group: group, dia: dia))

            }
        }
    }
}


class GetData: ObservableObject {
    @Published var data = [category]()
    
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
                        
                        self.data.append(category(id: id, name: name, price: price, pic: id, group: group, dia: dia))

                    }
                }
        }
    }
}


struct category: Identifiable {
    
    var id : String
    var name : String
    var price : String
    var pic : String
    var group : String
    var dia : String
    
}
