//
//  aiyuApp.swift
//  aiyu
//
//  Created by Kelly Hum on 2025-02-14.
//

import SwiftUI

@main
struct aiyuApp: App {
    @StateObject private var persistenceController = PersistenceController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
