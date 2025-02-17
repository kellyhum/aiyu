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
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let sampleChars = [
        "飯", "麵包", "麻辣烫", "水餃", "火鍋", "蛋糕", "大吉大利", "牛肉麵", "橘子", "蘋果", "香蕉"
    ]
    
    var body: some View {
        VStack {
            Text("Edit Deck")
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Add words...", text: $inputtedCharacters)
                .padding(10)
                .background(.white)
                .border(.gray, width: 1)
                .cornerRadius(5)
                .padding(.bottom, 10) // margin
            
            Spacer()
            
            ScrollView(showsIndicators: true) {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(sampleChars, id: \.self) { item in
                        CharacterView(inputChar: item)
                    }
                }
            }
          
            
            Spacer()
        }
            .padding(20) // styles for the vstack
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
