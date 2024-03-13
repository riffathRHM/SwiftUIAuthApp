//
//  ButtonView.swift
//  SwiftUIAuthApp
//
//  Created by Elegant Media on 2024-03-12.
//

import SwiftUI

struct ButtonView: View {
    let name:String
    let description:String
    
    var body: some View {
        Button{
           print("\(description)")
        }label: {
            HStack{
                Text("\(name)")
                    .fontWeight(.semibold)
                Image(systemName: "arrow.right")
            }//HStack
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width - 32,height: 48)
            
        }
        .background(Color(.systemBlue))
        .cornerRadius(10)
        .padding(.top,24)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(name: "SING IN", description: "sign in")
    }
}
