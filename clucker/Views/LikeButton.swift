//
//  LikeButton.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-05.
//

import SwiftUI

struct LikeButton: View {
    
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Like", systemImage: isSet ? "heart.fill" : "heart")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .red : .white)
        }
    }
}

#Preview {
    LikeButton(isSet: .constant(true))
}
