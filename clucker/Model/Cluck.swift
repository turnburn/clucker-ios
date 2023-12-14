//
//  Cluck.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-05.
//

import Foundation

struct Cluck: Hashable, Codable {
    var id: Int
    var author: String
    var content: String
    var created_at: String
    var is_deleted: Bool
}

struct ClucksResponse: Codable {
    var clucks: [Cluck]
}

struct LikeDetailResponse: Codable {
    var id: Int
    var user: String
    var cluck: Int
}
