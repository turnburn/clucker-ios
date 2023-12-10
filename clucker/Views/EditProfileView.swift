//
//  EditProfileView.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-09.
//

import SwiftUI

struct EditProfileView: View {
    @State private var nameText = "bcturner"
    @State private var aboutText = "Brand on god"

    
    var body: some View {
        NavigationStack {
            VStack()
            {
                VStack(alignment: .leading)
                {
                    Text("Name")
                        .padding()
                        .font(.system(size: 20, weight: .bold, design: .monospaced)).foregroundColor(.black)
                    
                    TextEditor(text: $nameText)
                    .foregroundStyle(.secondary)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, maxHeight: 40)
                    .padding()
                    .background(.white)
                    .cornerRadius(20) /// make the background rounded
                    .overlay( /// apply a rounded border
                        RoundedRectangle(cornerRadius: 20)
                            .strokeBorder(.black, lineWidth: 8, antialiased: true)
                    )
                    .font(.system(size: 15, weight: .bold, design: .monospaced)).foregroundColor(.black)
                    
                    Text("About")
                        .padding()
                        .font(.system(size: 20, weight: .bold, design: .monospaced)).foregroundColor(.black)
                    
                    //Cluck Text Edit Compose
                    TextEditor(text: $aboutText)
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
                }
                
                //Submit Cluck Button
                Button("Save Changes") {
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
            .navigationTitle("Edit your Profile")
        }
    }
}

#Preview {
    EditProfileView()
}
