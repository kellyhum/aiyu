//
//  ContentView.swift
//  aiyu
//
//  Created by Kelly Hum on 2025-02-14.
//

import SwiftUI

struct ContentView: View {
    // TODO: switch from just keeping the img to making loading each image group individually
    
    var body: some View {
        NavigationStack {
                ZStack {
                    Image("introPage")
                        .resizable()
                    
                    NavigationLink(
                        destination: MainView()) {
                            Text("Continue")
                        }
                            .frame(width: 310)
                            .padding(.horizontal, 25)
                            .padding(.vertical, 15)
                            .background(.black)
                            .foregroundStyle(.white)
                            .cornerRadius(25)
                            .offset(y:300)
                       
                }
                    .ignoresSafeArea() // expand img to entire screen
        }
            .navigationTitle("")
            .toolbar(.hidden)
    }
}

#Preview {
    ContentView()
}
