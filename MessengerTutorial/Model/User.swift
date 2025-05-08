//
//  User.swift
//  MessengerTutorial
//
//  Created by Shiv Prakash Gupta on 29/04/25.
//

import Foundation


struct User:Codable, Identifiable, Hashable{
    var id = NSUUID().uuidString
    let fullname:String
    let email:String
    var profileImageUrl:String?
}

extension User{
    static let MOCK_USER = User(fullname: "Shiva Gupta", email: "batman@gmail.com", profileImageUrl: "logo")
}
