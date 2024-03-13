//
//  ListCheck.swift
//  SwiftUIAuthApp
//
//  Created by Elegant Media on 2024-03-13.
//

import SwiftUI

struct ListCheck: View {
    var body: some View {
        List{
            Section("Home"){
                Text("Helllo World")
                    .padding(.top,10)
            }
            
            Section("Settings"){
                
            }
        }.padding(.top,100)
            .padding(.bottom,100)
           
    
            
    }
}

struct ListCheck_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea(.all,edges: .all)
            ListCheck()
        }
        
    }
}
