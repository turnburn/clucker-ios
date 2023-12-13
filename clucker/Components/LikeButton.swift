//
//  LikeButton.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-05.
//

import SwiftUI

struct LikeButton: View {
    
    @State var isSet: Bool
    
    var body: some View {
        Image(isSet ? "like.fill" : "like")
            .resizable()
            .frame(width: 32.0, height: 32.0)
            .onTapGesture {
                isSet.toggle()
            }
    }
}

#Preview {
    LikeButton(isSet: false)
}
