//
//  FollowView.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-09.
//

import SwiftUI

struct FollowView: View {
    var body: some View {
        NavigationStack {
            VStack {
                VStack(){
                    HStack{
                        Text("See who "+following[0].user_id+" follows")                    .font(.system(size: 20, design: .monospaced))
                            
                    }
                    .padding()
                    FollowList(follows: followers)
                }
                .navigationTitle("Follow")
                .background(.white)
                .cornerRadius(20) /// make the background rounded
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(.black, lineWidth: 8, antialiased: true)
                )
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Color(red: 56 / 255, green: 189 / 255, blue: 248 / 255)
            )
        }

    }
}

#Preview {
    FollowView()
}
