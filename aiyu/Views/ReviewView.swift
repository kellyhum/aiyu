//
//  ReviewView.swift
//  aiyu
//
//  Created by Kelly Hum on 2025-02-16.
//

import SwiftUI
import PencilKit

struct ReviewView: View {
    @StateObject private var reviewVM = ReviewViewModel()
    @State private var canvasView = PKCanvasView()

    var body: some View {
        VStack {
            Text("Review Deck")
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            ProgressView(value: 1, total: 10) {
                Text("Questions")
                    .padding(.bottom, 10)
            }
            currentValueLabel: {
                Text("1/10")
            }
                .tint(Color(red: 0.37, green: 0.48, blue: 0.67))
                .padding(.top, 10)
            
            Button(action: {
                reviewVM.speakCharacter()
            }) {
                Image(systemName: "play.circle")
                
                Text("Play character")
            }
                .padding(15)
                .padding(.horizontal, 10)
                .foregroundStyle(.white)
                .background(Color(red: 0.37, green: 0.48, blue: 0.67))
                .cornerRadius(25)
            
            Spacer()
            
            VStack {
                CanvasView(canvasView: $canvasView)
                    .frame(width: 300, height: 400)
                    .overlay( // rounded border
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black.opacity(0.25), lineWidth: 2)
                    )
                
                Button(action: {
                    // TODO: could potentially abstract this out to maintain MVVM principles
                    canvasView.drawing = PKDrawing()
                }) {
                    Image(systemName: "trash")
                }
                .padding(5)
                .background(Color.red)
                .foregroundStyle(.white)
                .cornerRadius(25)
                .font(.caption)
                .fontWeight(.bold)
            }
         
            
            Spacer()

            
            Button("Check answer", action: {})
                .frame(width: 310)
                .padding(.horizontal, 25)
                .padding(.vertical, 15)
                .background(.black)
                .foregroundStyle(.white)
                .cornerRadius(25)
        }
            .padding(20)
            .frame(maxWidth: .infinity, maxHeight: .infinity) // make bg to expand to max space
            .background {
                Color(red: 0.97, green: 0.95, blue: 0.93)
                    .ignoresSafeArea()
            } // .bg closing
    }
}

#Preview {
    ReviewView()
}
