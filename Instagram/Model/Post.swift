//
//  Post.swift
//  Instagram
//
//  Created by Nguyễn Bách on 25/07/2023.
//

import Foundation

struct Post: Identifiable, Hashable , Codable{
    let id: String
    let owenUID: String
    let caption: String
    let likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post{
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString, owenUID: NSUUID().uuidString, caption: "Welcome to Vietnamese", likes: 105, imageUrl: "user1", timestamp: Date(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, owenUID: NSUUID().uuidString, caption: "Good morning!", likes: 72, imageUrl: "user2", timestamp: Date(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, owenUID: NSUUID().uuidString, caption: "Beautiful sunset", likes: 201, imageUrl: "user3", timestamp: Date(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, owenUID: NSUUID().uuidString, caption: "Exploring new places", likes: 315, imageUrl: "user4", timestamp: Date(), user: User.MOCK_USERS[3]),
        .init(id: NSUUID().uuidString, owenUID: NSUUID().uuidString, caption: "Happy weekend!", likes: 128, imageUrl: "user5", timestamp: Date(), user: User.MOCK_USERS[4])

        
        
        
        ]
}
