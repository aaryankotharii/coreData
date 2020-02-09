//
//  Student+CoreDataProperties.swift
//  coreDataPractice
//
//  Created by Aaryan Kothari on 09/02/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var city: String?
    @NSManaged public var mobile: String?
    @NSManaged public var address: String?
    @NSManaged public var name: String?

}
