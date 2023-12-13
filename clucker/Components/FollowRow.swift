//
//  FollowRow.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-09.
//

import SwiftUI

struct FollowRow: View {
    var follow : Follow
    
    @State var isFollowing: Bool
    
    var body: some View {
        HStack{
            VStack(alignment: .leading) {
                Text(follow.user_id)
                    .font(.system(size: 20, design: .monospaced))
                    .bold()
                
                Text("Example bio")
                    .font(.system(size: 15, design: .monospaced))
            }
            Spacer()
            //Submit Cluck Button
            Button(isFollowing ? "Following" : "Follow") {
                isFollowing.toggle()
            }
            .padding()
            .background(.cyan)
            .cornerRadius(20) /// make the background rounded
            .overlay( /// apply a rounded border
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(.cyan, lineWidth: 8, antialiased: true)
            )
            .font(.system(size: 15, weight: .regular, design: .monospaced)).foregroundColor(.black)
            
        }
    }
}

#Preview {
    FollowRow(follow: following[0], isFollowing: true)
}
