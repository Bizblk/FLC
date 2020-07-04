//
//  SignUp.swift
//  FLC
//
//  Created by Виталий Оранский on 05.07.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct SignUp: View {
    
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    @State var pass = ""
    @State var repass = ""
    @State var visible = false
    @State var revisible = false
    var body: some View {
        
   
        ZStack(alignment: .topLeading) {
            
            GeometryReader {_ in
                
                
                VStack {
                    
                    Image("999").resizable()
                    
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
                    
                    
                  HStack(spacing: 15) {
                      
                      VStack {
                          if self.revisible {
                              TextField("Password", text: self.$repass)
                          }
                          else {
                              SecureField("Password", text: self.$repass)
                          }
                      }
                    
                      
                      Button(action: {
                          
                          self.revisible.toggle()
                          
                      }) {
                          Image(systemName: self.revisible ? "eye.slash.fill" : "eye.fill")
                              .foregroundColor(self.color)
                      }
                      
                  }
                  .padding()
                  .background(RoundedRectangle(cornerRadius: 4).stroke(self.pass != "" ? Color(.red) : self.color, lineWidth: 2))
                  .padding(.top, 25)

                    
                    Button(action: {
                        
                    }) {
                        Text("Register")
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
                
            }) {
                
               Image(systemName: "chevron.left")
                .font(.title)
                    .foregroundColor(.red)
                
            }
            .padding()
        }
        
    
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
