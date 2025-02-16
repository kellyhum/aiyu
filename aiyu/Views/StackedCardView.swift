//
//  StackedCardView.swift
//  aiyu
//
//  Created by Kelly Hum on 2025-02-15.
//

import SwiftUI

struct StackedCardView: View {
    var body: some View {
        ZStack {
            CardView(word: "test", bgImage: Image("testCardBG"))
                .rotationEffect(.degrees(5), anchor: .bottomTrailing)
            
            CardView(word: "testing 2", bgImage: Image("testCardBG3"))
                .rotationEffect(.degrees(-5), anchor: .bottomLeading)
            
            CardView(word: "testing 2", bgImage: Image("testCardBG2"))
        }
            .padding(.vertical, 20)
    }
}

#Preview {
    StackedCardView()
}
