//
//  main.swift
//  Lesson5_Dictionaryes
//
//  Created by Anatoly Salov on 24.02.22.
//

import Foundation

print("Hello, World!")

var dictOne: [Int : String] = [0 : "Anatoly",1 : "Vika",2: "Ira"]

if let unwrupped = (dictOne[0]) {
    print(unwrupped)
}

print(dictOne.isEmpty)

var dictTwo = [Int:String]()
print(dictTwo.count)

dictOne.updateValue("ivan", forKey: 3)

dictOne[4] = "Vera"
print(dictOne)

/*
 Swift 3 & Swift 4
 componentArray = Array(dict.keys) // for Dictionary
 componentArray = dict.allKeys // for NSDictionary
 */

let keys = dictOne.keys

let keysArray: [Int] = Array(dictOne.keys)
print(keysArray)

dictOne[0] = nil
print(dictOne)

//dictOne = [:]
//print(dictOne)

for key in dictOne.keys {
    
    if let unwrup = dictOne[key] {
        print("key is \(key) value is \(unwrup)")
    }
}

for (key, value) in dictOne {
    print("key is \(key) value is \(value)")
}
