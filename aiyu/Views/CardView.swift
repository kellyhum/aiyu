//
//  CardView.swift
//  aiyu
//
//  Created by Kelly Hum on 2025-02-15.
//

import SwiftUI

struct CardView : View {
    let word: String
    let bgImage: Image
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.clear)
                .frame(width: 200, height: 400) // rectangle size
                
                .background(
                    bgImage
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 400)
                        .clipShape(RoundedRectangle(cornerRadius: 10)) // make image fit rectangle
                        .clipped()
                )
                .shadow(radius: 10)
            
            Text(word)
                .padding(.horizontal, 20)
                .padding(.vertical, 10)

                .background(.ultraThinMaterial)
                .environment(\.colorScheme, .dark) // always use dark mode variation
                .cornerRadius(25)

                .offset(y: 150)

                .foregroundStyle(.white)
                .bold()
                .font(.system(size: 12))
                
        }
       
    }
}

#Preview {
    CardView(word: "DECK TITLE", bgImage: Image("testCardBG2"))
}
