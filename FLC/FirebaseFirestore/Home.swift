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
    
    var body: some View {
        
        VStack{
            List(categories.datas) {i in
                HStack {
                    Text(i.id)
                    Text(i.group)
                    Text(i.name)
                    Text(i.price)



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
        db.collection("FishingLine").addSnapshotListener { (snap, err) in
            if err != nil{
                print((err?.localizedDescription)!)
                return
            }
            for i in snap!.documentChanges{
                let id = i.document.documentID
                let name = i.document.get("name") as! String
                let price = i.document.get("price") as! String
                let group = i.document.get("group") as! String
                
                self.datas.append(category(id: id, name: name, price: price, pic: id, group: group))

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
    
}
