//
//  ProfileView.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-09.
//

import SwiftUI

struct ProfileView: View {
    
    @State var clucksByAuthor = [Cluck]()
    
    var body: some View {
        NavigationStack {
            VStack()
            {
                VStack()
                {
                    ProfileHeader()
                    .padding()
                    
                    if(clucksByAuthor.isEmpty)
                    {
                        ProgressView()
                        Spacer()
                    }
                    else
                    {
                        ClucksList(clucks: clucksByAuthor)
                    }
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
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
            .onAppear() {
                CluckerApi().getClucksByAuthor(author: "bcturner", completion:
                    { (clucks)
                    in self.clucksByAuthor = clucks
                        }
                )
            }
        }
    }
}

#Preview {
    ProfileView()
}
