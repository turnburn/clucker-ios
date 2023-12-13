//
//  LoginView.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-13.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    Text("Welcome to Clucker!")
                        .font(.system(size: 20, weight: .bold, design: .monospaced)).foregroundColor(.black)
                        .padding()
                    HStack {
                        Image("chicken_bg_white")
                            .resizable()
                            .frame(width: 64.0, height: 64.0)
                    }
                    
                    NavigationLink(destination: ContentView(),
                       label: {
                            Text("Sign In with Google")
                            .padding()
                            .background(.cyan)
                            .cornerRadius(20) /// make the background rounded
                            .overlay( /// apply a rounded border
                                RoundedRectangle(cornerRadius: 20)
                                    .strokeBorder(.cyan, lineWidth: 8, antialiased: true)
                            )
                            .font(.system(size: 15, weight: .regular, design: .monospaced)).foregroundColor(.black)
                        }
                    )

                    
                    Text("Don't have an account?")
                        .font(.system(size: 15, weight: .regular, design: .monospaced)).foregroundColor(.black)
                    
                    Button("create an account") {
                        print("Button tapped!")
                    }
                    .font(.system(size: 15, weight: .regular, design: .monospaced))
                }
                .frame(maxWidth: 300, maxHeight: 300)
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
    LoginView()
}
