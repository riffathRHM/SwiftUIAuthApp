//
//  RegistrationView.swift
//  SwiftUIAuthApp
//
//  Created by Elegant Media on 2024-03-09.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
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
                
                InputView(text: $fullname,
                          title: "Full Name",
                          placeholder: "Enter your name")
                
                InputView(text: $password, title: "Password",
                          placeholder: "Enter your password",
                          isSecureField: true)
                
                InputView(text: $confirmPassword,
                          title: "Confirm Password",
                          placeholder: "Confirm your password",
                          isSecureField: true)
                
            }.padding(.horizontal)
                .padding(.top,12)
            Button{
                print("Sign User up")
            }label: {
                HStack{
                    Text("SING UP")
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
            
            Button{
                dismiss()
            }label: {
                HStack(spacing:3) {
                    Text("Already have an account ?")
                    Text("Sign in")
                        .fontWeight(.bold)
                }.font(.system(size:14))
            }//VStack
        }
    }
    
    struct RegistrationView_Previews: PreviewProvider {
        static var previews: some View {
            RegistrationView()
        }
    }
}
