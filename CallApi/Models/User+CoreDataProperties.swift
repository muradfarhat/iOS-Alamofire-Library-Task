//
//  User+CoreDataProperties.swift
//  
//
//  Created by Murad Farhat on 14/06/2023.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var email: String?
    @NSManaged public var id: Int16
    @NSManaged public var name: String?
    @NSManaged public var userName: String?

}
