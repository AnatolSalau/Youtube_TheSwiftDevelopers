//
//  main.swift
//  Lesson8_IfElse
//
//  Created by Anatoly Salov on 23.02.22.
//

import Foundation

print("Hello, World!")

let date: Int = 6

switch date {
    case 1...5:
    print("Work day")
    case 6...7:
    print("Holiday")
default:
    print("Wrong date")
}

let characteristic = (age:18, skill:"Swift develop", sex:"M")
let isFlag = true

switch (characteristic.age, characteristic.skill,characteristic.sex) {
    case(18, "Swift develop","M"):
        print("Enter to work")
    case(1...15, _, _):
        print("You yuang")
    case(18, "Swift develop","M") where isFlag == true:
        print("We good developer but flag is false")
    default:
    print("Error")
}
