//
//  CluckerApi.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-14.
//

import Foundation

class CluckerApi {
    let baseURLString = "https://api.clucker.club/api/"
    
    let clucksRoute = "cluck"
    let authorRoute = "clucks_author?author="
    
    func getAllClucks() {
        // TODO
    }
    
    func getClucksByAuthor(author: String, completion:@escaping ([Cluck]) -> ()) {
        URLSession.shared.dataTask(with: URL(string : baseURLString+authorRoute+author)!) { data,_,_  in
            let clucks = try? JSONDecoder().decode(ClucksResponse.self, from: data!)
            
            DispatchQueue.main.async {
                completion(clucks!.clucks)
            }
        }
        .resume()
    }
}
