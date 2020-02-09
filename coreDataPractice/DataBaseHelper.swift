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
    
    func getStudentData() -> [Student] {
        var student = [Student]()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Student")
        do {
            student = try context?.fetch(fetchRequest) as! [Student]
        } catch  {
            print("Cannot get Data")
        }
        return student
    }
    
    func deleteData(index: Int)-> [Student]{
        var student = getStudentData()
        context?.delete(student[index])
        student.remove(at: index)
        
        do {
            try context?.save()
        } catch  {
            print("cannot delete data")
        }
        
        return student
    }
}


