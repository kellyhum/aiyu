//
//  Profile+CoreDataProperties.swift
//  aiyu
//
//  Created by Kelly Hum on 2025-02-17.
//
//

import Foundation
import CoreData


extension Profile {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Profile> {
        return NSFetchRequest<Profile>(entityName: "Profile")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var username: String?
    @NSManaged public var decks: NSSet?

}

// MARK: Generated accessors for decks
extension Profile {

    @objc(addDecksObject:)
    @NSManaged public func addToDecks(_ value: Deck)

    @objc(removeDecksObject:)
    @NSManaged public func removeFromDecks(_ value: Deck)

    @objc(addDecks:)
    @NSManaged public func addToDecks(_ values: NSSet)

    @objc(removeDecks:)
    @NSManaged public func removeFromDecks(_ values: NSSet)

}

extension Profile : Identifiable {

}
