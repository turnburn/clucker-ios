//
//  ModelData.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-05.
//

import Foundation

var clucksByFeed: [Cluck] = load("Clucks.json")
var clucksByUser: [Cluck] = load("ClucksByAuthor.json")
var following: [Follow] = load("Following.json");
var followers: [Follow] = load("Followers.json");


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
