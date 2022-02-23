//
//  main.swift
//  Lesson7_Optionals
//
//  Created by Anatoly Salov on 23.02.22.
//

import Foundation

print("Hello, World!")

var date: String?

date = "13.02.2021"

if  let unwrappedDate = date {
    print(unwrappedDate)
}

var dateTwo: String?
dateTwo = "00.00.00"

if dateTwo != nil {
    print(dateTwo!)
}
else {
    print("nill")
}

var dateThree: String = "30"
//print(Int(dateThree))

if let unwrappedDateThree = Int(dateThree) {
    print(unwrappedDateThree)
}

