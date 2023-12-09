//
//  Follow.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-09.
//

import Foundation

struct Follow: Hashable, Codable {
    var id: Int
    var user_id: String
    var following: String
}
