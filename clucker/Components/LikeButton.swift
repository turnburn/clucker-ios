//
//  LikeButton.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-05.
//

import SwiftUI

struct LikeButton: View {
    
    @State var cluck_id: Int
    @State var isSet = false;
    
    var body: some View {
        Image(isSet ? "like.fill" : "like")
            .resizable()
            .frame(width: 32.0, height: 32.0)
            .onTapGesture {
                isSet.toggle()
            }
            .onAppear() {
                CluckerApi().hasUserLikedCluck(user: "bcturner", cluck_id: cluck_id, completion: { (data, error) in
                    if error != nil {
                            self.isSet = false;
                    } else if data != nil {
                            self.isSet = true;
                        }
                    }
                  )
            }
    }
    
    func updateLike(enabled : Bool)
    {
        isSet = enabled;
    }
}

#Preview {
    LikeButton(cluck_id: 770)
}
