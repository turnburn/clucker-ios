//
//  ProfileHeader.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-09.
//

import SwiftUI

struct ProfileHeader: View {
    
    var user : String
    
    var body: some View {
        NavigationStack {
            HStack
            {
                VStack(alignment: .leading) {
                    HStack{
                        Text(user)
                            .font(.system(size: 20, design: .monospaced))
                            .bold()
                        Spacer()
                        
                        NavigationLink(destination: EditProfileView(),
                        label: {
                            Image("settings")
                                .resizable()
                                .frame(width: 32.0, height: 32.0)
                        })

                    }
                    
                    HStack(alignment: .top)  {
                        
                        // Need API to get bio
                        Text("Example Bio")
                            .font(.system(size: 18, design: .monospaced))
                        Spacer()
                        
                        VStack {
                            NavigationLink(String(followers.count)+" followers") {
                                FollowView()
                            }
                            .font(.system(size: 15, weight: .regular, design: .monospaced)).foregroundColor(.black)
                            NavigationLink(String(following.count)+" following") {
                                FollowView()
                            }
                            .font(.system(size: 15, weight: .regular, design: .monospaced)).foregroundColor(.black)
                        }
                    }
                    
                }
            }
            .padding()
            .background(.white)
            .cornerRadius(20) /// make the background rounded
            .overlay( /// apply a rounded border
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(.black, lineWidth: 8, antialiased: true)
            )
            .listRowBackground(Color(red: 56 / 255, green: 189 / 255, blue: 248 / 255))
        }
    }
}

#Preview {
    ProfileHeader(user: "bcturner")
}
