//
//  main.swift
//  Lesson10HW_Closures
//
//  Created by Anatoly Salov on 26.02.22.
//

import Foundation


var arrayWithNames = [String]()

let arrayAddName = {(array: inout[String], name: String...) in
    array = name
    
}

arrayAddName(&arrayWithNames, "Ivan", "Anatoly")

func sortLength (array: inout[String]) {
    let length: Int = array.count
    
    for i in 0..<(length-1 ){
            if array[i] > array[i+1] {
                var tmp: String
                tmp = array[i]
                array[i] = array[i+1]
                array[i+1] = tmp
            }
       }
}

let sprtedArr = {(array: inout[String]) in
    let length: Int = array.count
    for i in 0..<(length-1 ){
            if array[i] > array[i+1] {
                var tmp: String
                tmp = array[i]
                array[i] = array[i+1]
                array[i+1] = tmp
            }
       }
}

print(arrayWithNames)

//sortLength(array: &arrayWithNames)
sprtedArr(&arrayWithNames)

print(arrayWithNames)

var dictionary: [String : Int] = [
    "Anatoly" : 32,
    "Vika"    : 32,
    "Ivan"    : 31
]

let keyValye = {(dict: inout[String: Int], key: String) in
    
    if let unwrupped = dict[key] {
        print(unwrupped)
    }
}

keyValye(&dictionary, "Vika")


