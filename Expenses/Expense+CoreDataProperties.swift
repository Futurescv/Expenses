//
//  Expense+CoreDataProperties.swift
//  Expenses
//
//  Created by 123 on 2018/11/2.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//
//

import Foundation
import CoreData


extension Expense {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Expense> {
        return NSFetchRequest<Expense>(entityName: "Expense")
    }

    @NSManaged public var name: String?
    @NSManaged public var amount: Float
    @NSManaged public var rawDate: NSDate?

}
