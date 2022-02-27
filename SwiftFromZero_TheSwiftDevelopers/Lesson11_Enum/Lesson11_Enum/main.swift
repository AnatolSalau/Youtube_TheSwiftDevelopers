//
//  main.swift
//  Lesson11_Enum
//
//  Created by Anatoly Salov on 26.02.22.
//

import Foundation
/*
enum NameEnum {
    //list throught case
}
*/

enum TravelClass {
    case First, Business, Economy
}

let travel = TravelClass.Economy

enum Medal {
    case gold
    case silver
    case bronze
}

let medal = Medal.bronze

switch medal {
    
case .gold:
    print("Medal is gold")
case .silver:
    print("Medal is silver")
case .bronze:
    print("Medal is bronze")
}

enum DayWeek {
    case monday
    case tuesday
    case wednesday
    enum thursday {
        case day
        case night
    }
    case friday
    case saturday
    case sunday
}

var day = DayWeek.thursday.day
print(day)

enum Operation {
    case double(Double)
    case integer(Int)
    case float(Float)
    case string(String)
}

var dictionary: Dictionary<String, Operation> = [
    "double" : Operation.double(24.7),
    "integer" : Operation.integer(1),
    "float" : Operation.float(25.3),
    "string" : Operation.string("Anatoly")
]

print(dictionary["double"]!)
