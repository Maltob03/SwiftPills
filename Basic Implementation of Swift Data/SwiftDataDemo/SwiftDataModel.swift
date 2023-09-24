//
//  SwiftDataModel.swift
//  SwiftDataDemo
//
//  Created by Matteo Altobello on 10/07/23.
//

import SwiftData
import Foundation



@Model
final class StudentList {
    var name : String
    var surname : String
    var age : Int
    
    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
}


