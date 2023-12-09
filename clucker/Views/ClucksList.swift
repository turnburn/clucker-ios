//
//  ClucksList.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-05.
//

import SwiftUI


struct ClucksList: View {
    var clucks = [Cluck]()
    
    var body: some View {
        List(clucks, id: \.id) { cluck in
            CluckRow(Cluck: cluck)
        }
        .background(
            Color(red: 56 / 255, green: 189 / 255, blue: 248 / 255)
        )
        .scrollContentBackground(.hidden)
        .refreshable {
            
        }
    }

}

#Preview {
    ClucksList(clucks: clucksByUser)
}
