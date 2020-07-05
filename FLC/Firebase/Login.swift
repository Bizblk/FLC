//
//  LoginView.swift
//  FLC
//
//  Created by Виталий Оранский on 29.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI
import Firebase

struct Login: View {
    
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    @State var pass = ""
    @State var visible = false
    @Binding var show: Bool
    @State var alert = false
    @State var error = ""
    var body: some View {
        
        ZStack {
            
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
                                .autocapitalization(.none)
                                 .padding()
                                 .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color("Color") : self.color, lineWidth: 2))
                                 .padding(.top, 25)
                             
                             HStack(spacing: 15) {
                                 
                                 VStack {
                                     if self.visible {
                                         TextField("Password", text: self.$pass)
                                        .autocapitalization(.none)

                                     }
                                     else {
                                         SecureField("Password", text: self.$pass)
                                        .autocapitalization(.none)

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
                                    
                                    self.reset()
                                    
                                 }) {
                                     Text("Forget password")
                                         .fontWeight(.bold)
                                         .foregroundColor(Color(.red))
                                 }
                             }
                             .padding(.top, 20)
                             
                             Button(action: {
                                
                                self.verify()
                                
                                 
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
            
            if self.alert {
                Error(alert: self.$alert, error: self.$error)
            }
            
        }
     
        
    
    }
    
    func verify() {
        
        if self.email != "" && self.pass != "" {
            
            Auth.auth().signIn(withEmail: self.email, password: self.pass) { (res, err) in
                
                if err != nil {
                    
                    self.error = err!.localizedDescription
                    self.alert.toggle()
                    return
                }
                
                print("success")
                UserDefaults.standard.set(true, forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
            }
            
        } else {
            
            self.error = "Please fill all the contents properly"
            self.alert.toggle()
        }
        
    }
    func reset() {
        
        if self.email != "" {
            
            Auth.auth().sendPasswordReset(withEmail: self.email) { (err) in
                
                if err != nil {
                    
                    self.error = err!.localizedDescription
                    self.alert.toggle()
                    return
                }
                
                self.error = "RESET"
                self.alert.toggle()
                
            }
        } else {
            self.error = "Email Id is empty"
            self.alert.toggle()
        }
        
    }
}

//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        Login(, show: <#Binding<Bool>#>)
//    }
//}
