//
//  EditView.swift
//  aiyu
//
//  Created by Kelly Hum on 2025-02-15.
//

import SwiftUI

struct EditView: View {
    // TODO: create theme to reduce redundant code
    
    @State private var inputtedCharacters: String = "" // use @state to persist variable changes
    
    var body: some View {
        VStack {
            Text("Edit Deck")
                .font(.title)
                .bold()
                .padding(.top, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Add words...", text: $inputtedCharacters)
                .padding(10)
                .background(.white)
                .border(.gray, width: 1)
                .cornerRadius(5)
            
            Spacer()
        }
            .padding(20)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Color(red: 0.97, green: 0.95, blue: 0.93)
                    .ignoresSafeArea()
            }
    }
}

#Preview {
    EditView()
}
