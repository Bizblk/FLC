//
//  AuthView.swift
//  FLC
//
//  Created by Виталий Оранский on 27.06.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct AuthView: View {
    
    @State var mail = ""
    @State var password = ""
    
    var body: some View {
        
        
        VStack{
            TextField("enter you mail", text: $mail)
            TextField("enter you password", text: $password)
        }
        
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
