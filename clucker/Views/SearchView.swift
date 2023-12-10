//
//  SearchView.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-09.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            VStack()
            {
                VStack(alignment: .leading)
                {
                    Text("Find other users")
                        .padding()
                        .font(.system(size: 20, weight: .bold, design: .monospaced)).foregroundColor(.black)
                    
                    HStack {
                        TextField("Username", text: $searchText)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        //Submit Cluck Button
                        Button("Search") {
                            print("Button tapped!")
                        }
                        .padding()
                        .background(.black)
                        .cornerRadius(20) /// make the background rounded
                        .overlay( /// apply a rounded border
                            RoundedRectangle(cornerRadius: 20)
                                .strokeBorder(.black, lineWidth: 8, antialiased: true)
                        )
                        .font(.system(size: 10, weight: .regular, design: .monospaced)).foregroundColor(.white)
                    }
                }
                .background(.white)
                .cornerRadius(20) /// make the background rounded
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(.black, lineWidth: 8, antialiased: true)
                )
                
                VStack(){
                    HStack{
                        Text("Results")
                        .font(.system(size: 20, weight: .bold, design: .monospaced)).foregroundColor(.black)
                            
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
                

                
                Spacer()
            }

            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Color(red: 56 / 255, green: 189 / 255, blue: 248 / 255)
            )
            .navigationTitle("Search")
        }
    }
}

#Preview {
    SearchView()
}
