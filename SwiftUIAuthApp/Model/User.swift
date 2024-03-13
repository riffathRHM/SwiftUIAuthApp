//
//  User.swift
//  SwiftUIAuthApp
//
//  Created by Elegant Media on 2024-03-13.
//

import Foundation

struct User:Identifiable,Codable {
    let id:String
    let fullName:String
    let email:String
    
    var initials:String{
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullName){
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        return ""
    }
}

extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString , fullName: "Riffath RHM", email: "test@gmail.com")
}
