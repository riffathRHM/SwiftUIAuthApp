//
//  LoginView.swift
//  SwiftUIAuthApp
//
//  Created by Elegant Media on 2024-03-08.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    
    var body: some View {
        NavigationStack{
            VStack{
                //Image
                Image("Firebase")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120,height: 120,alignment: .center)
                    .padding(.vertical,32)
                //form fields
                VStack(spacing: 24){
                    InputView(text: $email,
                              title: "Email Address",
                              placeholder: "name@example.com")
                    .autocapitalization(.none)
                    
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Enter your Password",isSecureField: true)
                    
                }.padding(.horizontal)
                 .padding(.top,12)
                //VStack
                //sign in button
                Button{
                   print("User Log in")
                }label: {
                    HStack{
                        Text("SING IN")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }//HStack
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32,height: 48)
                    
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top,24)
                
                
                Spacer()
                //sign up button
                
                NavigationLink {
                    RegistrationView()
                }label: {
                    HStack(spacing:3) {
                        Text("Don't have an account ?")
                        Text("Sign up")
                            .fontWeight(.bold)
                    }.font(.system(size:14))
                    
                }
               
            }//VStack
        }//NavigationStack
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
