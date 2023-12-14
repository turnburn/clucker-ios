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
    let likeDetailRoute = "like_detail"
    
    
    func getAllClucks() {
        // TODO
    }
    
    func getClucksByAuthor(author: String, completion:@escaping ([Cluck]) -> ()) {
        let url = URL(string : baseURLString+authorRoute+author)
        URLSession.shared.dataTask(with: url!) { data,_,_  in
            let clucks = try? JSONDecoder().decode(ClucksResponse.self, from: data!)
            
            DispatchQueue.main.async {
                completion(clucks!.clucks)
            }
        }
        .resume()
    }

    func hasUserLikedCluck(user: String, cluck_id : Int, completion: @escaping (Data?, Error?) -> Void) {
        let session = URLSession.shared
        let url = URL(string : baseURLString+likeDetailRoute+"?user="+user+"&cluck="+String(cluck_id))
        let task = session.dataTask(with: url!) { (data, response, error) in
            if let error = error {
                completion(nil, error)
                return
            }

            if let data = data {
                completion(data, nil)
            }
        }

        task.resume()
    }

}
