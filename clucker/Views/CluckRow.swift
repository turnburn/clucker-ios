//
//  CluckRow.swift
//  clucker
//
//  Created by Brandon Turner on 2023-12-05.
//

import SwiftUI

struct CluckRow: View {
    var Cluck : Cluck
    var CluckDate : Date;
    
    let formatter = ISO8601DateFormatter();
    
    init(Cluck : Cluck) {
        self.Cluck = Cluck
        
        formatter.formatOptions = [
            .withInternetDateTime,
            .withFractionalSeconds,
            .withTimeZone
        ]
        
        CluckDate = formatter.date(from: Cluck.created_at)!
    }
    
    
    var body: some View {
        HStack
        {
            VStack(alignment: .leading) {
                HStack{
                    
                    Text(Cluck.author)
                        .font(.system(size: 20, design: .monospaced))
                        .bold()
                    Spacer()
                    Image("stats")
                        .resizable()
                        .frame(width: 32.0, height: 32.0)
                }

                Text(Cluck.content)
                    .font(.system(size: 18, design: .monospaced))
                
                HStack{
                    
                    Text(CluckDate.formatted(date: Date.FormatStyle.DateStyle.abbreviated, time: .shortened))
                        .font(.system(size: 14))
                    Spacer()
                    Image("like")
                        .resizable()
                        .frame(width: 32.0, height: 32.0)
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

#Preview {
    CluckRow(Cluck : clucksByFeed[0])
}
