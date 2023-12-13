//
//  FollowList.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-09.
//

import SwiftUI

struct FollowList: View {
    var follows = [Follow]()
    
    var body: some View {
        List(follows, id: \.id) { follow in
            FollowRow(follow: follow)
        }
        .scrollContentBackground(.hidden)
    }
}

#Preview {
    FollowList(follows: followers)
}
