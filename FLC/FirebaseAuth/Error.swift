//
//  Error.swift
//  FLC
//
//  Created by Виталий Оранский on 05.07.2020.
//  Copyright © 2020 Bizblk. All rights reserved.
//

import SwiftUI

struct Error: View {
    
    @State var color = Color.black.opacity(0.7)
    @Binding var alert : Bool
    @Binding var error : String
    
    var body: some View {
        
        GeometryReader {_ in
            
            VStack {
                
                HStack {
                    
                    Text(self.error == "RESET" ? "Message" : "Error")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(self.color)
                    
                    Spacer()
                }
                    
                .padding(.horizontal, 25)
                
                Text(self.error == "RESET" ? "Password reset ling go to email" : self.error )
                    .foregroundColor(self.color)
                    .padding(.top)
                    .padding(.horizontal, 25)
                
                Button(action: {
                    
                    self.alert.toggle()
                    
                }) {
                    Text(self.error == "RESET" ? "Ok" : "Cancel")
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 120)
                }
                .background(Color(.red))
                .cornerRadius(10)
                .padding(.top, 25)
                
            }
            .padding(.vertical, 25)
                
            .frame(width: UIScreen.main.bounds.width - 70)
            .background(Color.white)
            .cornerRadius(15)
            
        }
        .background(Color.black.opacity(0.35).edgesIgnoringSafeArea(.all))
        
    }
}

//struct Error_Previews: PreviewProvider {
//    static var previews: some View {
//        Error()
//    }
//}
