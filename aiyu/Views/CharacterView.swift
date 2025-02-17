//
//  CharacterView.swift
//  aiyu
//
//  Created by Kelly Hum on 2025-02-16.
//

import SwiftUI

struct CharacterView: View {
    let inputChar: String
    
    public var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 150)
            
            ZStack {
               Circle()
                   .fill(Color(red: 0.54, green: 0.5, blue: 0.45))
                   .frame(width: 20, height: 20)

               Image(systemName: "xmark")
                   .foregroundStyle(.white)
                   .font(.caption)
                   .fontWeight(.bold)
            }
               .padding(10) // offset it from the top corner
               .offset(x: -55, y: -55)
                
            
            
            Text(inputChar)
                .foregroundStyle(.black)
                .font(.system(size: 36, weight: .bold))
                .padding(35)
                
                .multilineTextAlignment(.center) // centre align for 3-char phrases
        }
            .frame(width: 150)
    }
}

#Preview {
    CharacterView(inputChar: "包子")
}
