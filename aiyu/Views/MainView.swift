//
//  MainView.swift
//  aiyu
//
//  Created by Kelly Hum on 2025-02-14.
//

import SwiftUI
import CoreData

struct MainView: View {
    // TODO: switch buttons to a custom reusable style instead of just copy/pasting the same style
    // TODO: also have universal values for font sizes
    
    var body: some View {
        VStack {
            // heading text
            Text("Your Decks")
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            // add theme/test theme bar
            HStack {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 10)
                    .background(.black)
                    .foregroundStyle(.white)
                    .font(.system(size: 14))
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 5)

                Button(action: {}) {
                    Image(systemName: "pencil.and.outline")
                    
                    Text("Test Theme")
                }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 10)
                    .background(.white)
                    .foregroundStyle(.black)
                    .font(.system(size: 14))
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 5)
            }
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            TabView {
                ForEach(0..<3, id: \.self) { i in
                    StackedCardView()
                        .id(i)
                }
            }
                .tabViewStyle(.page) // horizontal swipe
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                .environment(\.colorScheme, .dark) // force dark mode dots
            
            Spacer()
            
            NavigationStack {
                ZStack {
                    Color(red: 0.97, green: 0.95, blue: 0.93)
                        .ignoresSafeArea() // bottom layer: fill w/ bg color
                    
                    VStack {
                        NavigationLink(
                            destination: ReviewView()) {
                                Text("Review")
                                    .frame(width: 310)
                                    .padding(.horizontal, 25)
                                    .padding(.vertical, 15)
                                    .background(.black)
                                    .foregroundStyle(.white)
                                    .cornerRadius(25)
                        }
                        
                        NavigationLink(
                            destination: EditView(context: PersistenceController.shared.container.viewContext)) {
                                Text("Edit Deck")
                                    .frame(width: 310)
                                    .padding(.horizontal, 25)
                                    .padding(.vertical, 15)
                                    .background(.white)
                                    .foregroundStyle(.black)
                                    .cornerRadius(25)
                                    .shadow(color: Color.black.opacity(0.1), radius: 5)
                        }
                    }
                    
                }
            }
                .frame(height: 130.0)
                .navigationTitle("")
                
            
        } // vstack closing tag
            .padding(20)
            .frame(maxWidth: .infinity, maxHeight: .infinity) // make bg to expand to max space
            .background {
                Color(red: 0.97, green: 0.95, blue: 0.93)
                    .ignoresSafeArea()
            } // .bg closing
        
    }
}

#Preview {
    MainView()
}
