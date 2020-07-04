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
        
        
        ZStack {
            Image("999")
                .blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        VStack(spacing: 80.0) {
            
            
                
            
            VStack(spacing: 20.0) {
                Text("Chimera")
                    .font(.largeTitle)
                Text("User does not exist")
                    .foregroundColor(Color.red)
            }
            VStack(spacing: 50.0) {
                
                VStack {
                    TextField("enter you mail", text: $mail).frame(width: 250)
                    TextField("enter you password", text: $password).frame(width: 250)
                }
                
                VStack(spacing: 30.0) {
                    Button(action:  { print("hello")  },
                           label:   {Text("Login")
                            .font(.title) }).frame(width: 200)
                    
                    Button(action:  { print("hello")  },
                           label:   {Text("Register") }).frame(width: 200)
                    
                }
                
                
            }
        }
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
