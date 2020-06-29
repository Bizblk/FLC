//
//  AuthView.swift
//  FLC
//
//  Created by Виталий Оранский on 27.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI
import Firebase
struct AuthView: View {
    
    
    @State var mail = ""
    @State var password = ""
    
    var body: some View {
        
        
        VStack {
            TextField("enter you mail", text: $mail)
            TextField("enter you password", text: $password)
            Button(action:  { print("hello")  },
                    label:   {Text("go") })
           
                  
               
                    
            
        }.background(Color.red)
        
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
