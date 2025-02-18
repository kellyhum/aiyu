//
//  PersistenceController.swift
//  aiyu
//
//  Created by Kelly Hum on 2025-02-17.
//

// heavily referenced several sites
// -> https://www.hackingwithswift.com/books/ios-swiftui/how-to-combine-core-data-and-swiftui
// -> https://bugfender.com/blog/ios-core-data/

import CoreData

class PersistenceController: ObservableObject {
    static let shared = PersistenceController()
    
    let container = NSPersistentContainer(name: "MainDatabase")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
