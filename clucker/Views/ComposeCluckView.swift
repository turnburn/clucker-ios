//
//  ComposeCluckView.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-07.
//

import SwiftUI

struct ComposeCluckView: View {
    @State private var profileText = "What do you want to cluck?"
    
    var body: some View {
        NavigationStack {
            VStack {
                
                //Cluck Text Edit Compose
                TextEditor(text: $profileText)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, maxHeight: 200)
                .padding()
                .background(.white)
                .cornerRadius(20) /// make the background rounded
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(.black, lineWidth: 8, antialiased: true)
                )
                .font(.system(size: 15, weight: .bold, design: .monospaced)).foregroundColor(.black)
                
                //Submit Cluck Button
                Button("Submit") {
                    print("Button tapped!")
                }
                .padding()
                .background(.black)
                .cornerRadius(20) /// make the background rounded
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(.black, lineWidth: 8, antialiased: true)
                )
                .font(.system(size: 15, weight: .regular, design: .monospaced)).foregroundColor(.white)

                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Color(red: 56 / 255, green: 189 / 255, blue: 248 / 255)
            )
            .navigationTitle("Create a Cluck")
        }
    }
}

#Preview {
    ComposeCluckView()
}
