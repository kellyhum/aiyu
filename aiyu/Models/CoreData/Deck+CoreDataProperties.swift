//
//  Deck+CoreDataProperties.swift
//  aiyu
//
//  Created by Kelly Hum on 2025-02-17.
//
//

import Foundation
import CoreData


extension Deck {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Deck> {
        return NSFetchRequest<Deck>(entityName: "Deck")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var deckChar: NSSet?
    @NSManaged public var profile: Profile?

}

// MARK: Generated accessors for deckChar
extension Deck {

    @objc(addDeckCharObject:)
    @NSManaged public func addToDeckChar(_ value: Character)

    @objc(removeDeckCharObject:)
    @NSManaged public func removeFromDeckChar(_ value: Character)

    @objc(addDeckChar:)
    @NSManaged public func addToDeckChar(_ values: NSSet)

    @objc(removeDeckChar:)
    @NSManaged public func removeFromDeckChar(_ values: NSSet)

}

extension Deck : Identifiable {

}
