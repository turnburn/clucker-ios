//
//  ContentView.swift
//  clucker
//
//  Created by Brandon Turner on 2023-11-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            
            VStack {
                HStack {
                    Image("chicken_bg_white")
                        .resizable()
                        .frame(width: 64.0, height: 64.0)
                }
                
                ClucksList(clucks: clucksByFeed)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Color(red: 56 / 255, green: 189 / 255, blue: 248 / 255)
            )
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    
                    HStack {
                        Button("Search") {
                            print("Open Search View")
                        }
                        Spacer()
                        NavigationLink("Cluck") {
                            ComposeCluckView()
                        }
                        Spacer()
                        NavigationLink("Profile") {
                            ProfileView()
                        }
                    }

                }
            }
            
        }
    }
    
}

#Preview {
    ContentView()
}
