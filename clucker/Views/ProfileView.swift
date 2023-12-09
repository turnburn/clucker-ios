//
//  ProfileView.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-09.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            
            VStack {
                ProfileHeader()
                    .padding()

                ClucksList(clucks: clucksByUser)
            }
            .background(
                Color(red: 56 / 255, green: 189 / 255, blue: 248 / 255)
            )
            .navigationTitle("Profile")
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    
                    HStack {
                        Button("Clucks") {
                            print("Filter for Clucks by User")
                        }
                        Spacer()
                        Button("Likes") {
                            print("Filter for liked clucks by user")
                        }
                    }

                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
