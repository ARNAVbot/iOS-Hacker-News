//
//  PostData.swift
//  Hacker News
//
//  Created by Arnav Agarwal on 10/04/21.
//

import Foundation

struct Results : Decodable {
    let hits : [Post]
}

// Idnetifiable helps to idnetify each post by its unique id which MUST be present in it
struct Post : Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url : String?
}
