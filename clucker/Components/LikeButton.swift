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
        Button {
            isSet.toggle()
        } label: {
            if(isSet){
                Image("like.fill")
                    .resizable()
                    .frame(width: 32.0, height: 32.0)
            }
            else{
                Image("like")
                    .resizable()
                    .frame(width: 32.0, height: 32.0)
            }
        }
    }
}

#Preview {
    LikeButton(isSet: false)
}
