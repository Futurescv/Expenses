//
//  Expense+CoreDataClass.swift
//  Expenses
//
//  Created by 123 on 2018/11/2.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Expense)
public class Expense: NSManagedObject {
    var date: Date? {
        get {
            return rawDate as Date?
        }
        set{
            rawDate = newValue as NSDate?
        }
    }
    
    convenience init?(name: String?, amount: Float, date: Date?){
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        self.init(entity: Expense.entity(),insertInto: managedContext)
        
        self.name = name
        self.amount = amount
        self.date = date
    }
}
