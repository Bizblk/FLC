//
//  LoginView.swift
//  FLC
//
//  Created by Виталий Оранский on 29.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct Login: View {
    
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    @State var pass = ""
    @State var visible = false
    @Binding var show: Bool
    var body: some View {
        
   
        ZStack(alignment: .topTrailing) {
            
            GeometryReader {_ in
                
                
                VStack {
                    
                    Image("999").resizable().frame(width: 250, height: 250)
                    
                    Text("Log in to your account")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(self.color)
                        .padding(.top, 35)
                    
                    TextField("Email", text: self.$email)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color("Color") : self.color, lineWidth: 2))
                        .padding(.top, 25)
                    
                    HStack(spacing: 15) {
                        
                        VStack {
                            if self.visible {
                                TextField("Password", text: self.$pass)
                            }
                            else {
                                SecureField("Password", text: self.$pass)
                            }
                        }
                        
                        Button(action: {
                            
                            self.visible.toggle()
                            
                        }) {
                            Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                                .foregroundColor(self.color)
                        }
                        
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.pass != "" ? Color(.red) : self.color, lineWidth: 2))
                    .padding(.top, 25)
                    
                    
                    HStack {
                        
                        Spacer()
                        Button(action: {
                        }) {
                            Text("Forget password")
                                .fontWeight(.bold)
                                .foregroundColor(Color(.red))
                        }
                    }
                    .padding(.top, 20)
                    
                    Button(action: {
                        
                    }) {
                        Text("Log in")
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 50)
                    }
                    .background(Color(.red))
                    .cornerRadius(10)
                    .padding(.top, 25)
                    
                }
                .padding(.horizontal, 25)
            }
            
            
            Button(action:  {
                
                self.show.toggle()
                
            }) {
                
                Text("Register")
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                
            }
            .padding()
        }
        
    
    }
}

//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        Login(, show: <#Binding<Bool>#>)
//    }
//}
