//
//  DataBaseHelper.swift
//  coreDataPractice
//
//  Created by Aaryan Kothari on 09/02/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class DataBaseHelper{
    
    static var shareInstance = DataBaseHelper()
    
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext

    func save(object : [String:String]){
        let student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context!) as! Student
        
        student.name = object["name"]
        student.address = object["address"]
        student.city = object["city"]
        student.mobile = object["mobile"]
        do {
            try context?.save()
        } catch  {
            print("data not saved")
        }
    }
}

