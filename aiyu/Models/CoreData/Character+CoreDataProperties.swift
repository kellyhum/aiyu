//
//  Character+CoreDataProperties.swift
//  aiyu
//
//  Created by Kelly Hum on 2025-02-17.
//
//

import Foundation
import CoreData


extension Character {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Character> {
        return NSFetchRequest<Character>(entityName: "Character")
    }

    @NSManaged public var character: String?
    @NSManaged public var id: UUID?
    @NSManaged public var charDeck: NSSet?

}

// MARK: Generated accessors for charDeck
extension Character {

    @objc(addCharDeckObject:)
    @NSManaged public func addToCharDeck(_ value: Deck)

    @objc(removeCharDeckObject:)
    @NSManaged public func removeFromCharDeck(_ value: Deck)

    @objc(addCharDeck:)
    @NSManaged public func addToCharDeck(_ values: NSSet)

    @objc(removeCharDeck:)
    @NSManaged public func removeFromCharDeck(_ values: NSSet)

}

extension Character : Identifiable {

}
