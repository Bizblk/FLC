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
    
    @State var show = false
   
    var body: some View {
        
        NavigationView {
            
            ZStack {
                NavigationLink(destination: SignUp(show: self.$show), isActive: self.$show) {
                    Text("")
                }
            .hidden()
                Login(show: self.$show)
            }
            
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
            
            
        }
  
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
