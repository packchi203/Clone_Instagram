//
//  User.swift
//  Instagram
//
//  Created by Nguyễn Bách on 25/07/2023.
//

import Foundation

struct User: Identifiable,Hashable,Codable{
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}
extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "packchi203", profileImageUrl: "avatar", fullname: "Nguyen Bach", bio: "djlkajsdlakjsdlakjdakjdlakjsdlk", email: "vanbach2003vn@gmail.com"),
        .init(id: NSUUID().uuidString, username: "NightRide", profileImageUrl: "user1", fullname: "Nguyen Bach", bio: "djlkajsdlakjsdlakjdakjdlakjsdlk", email: "vanbach2003vn@gmail.com"),
        .init(id: NSUUID().uuidString, username: "LunarEclipse", profileImageUrl: "user2", fullname: "Nguyen Bach", bio: "djlkajsdlakjsdlakjdakjdlakjsdlk", email: "vanbach2003vn@gmail.com"),
        .init(id: NSUUID().uuidString, username: "SilverArrow", profileImageUrl: "user3", fullname: "Nguyen Bach", bio: "djlkajsdlakjsdlakjdakjdlakjsdlk", email: "vanbach2003vn@gmail.com"),
        .init(id: NSUUID().uuidString, username: "PhoenixRising", profileImageUrl: "user4", fullname: "Nguyen Bach", bio: "djlkajsdlakjsdlakjdakjdlakjsdlk", email: "vanbach2003vn@gmail.com"),
        .init(id: NSUUID().uuidString, username: "CrystalWings", profileImageUrl: "user5", fullname: "Nguyen Bach", bio: "djlkajsdlakjsdlakjdakjdlakjsdlk", email: "vanbach2003vn@gmail.com"),
        
    ]
}
