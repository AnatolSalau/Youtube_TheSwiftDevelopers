//
//  main.swift
//  Lesson6_Tuples
//
//  Created by Anatoly Salov on 22.02.22.
//

import Foundation

print("Hello, World!")

let firstTuple: (Int, Double, String, Bool) = (1, 32.45, "Vika", true)
let (intVal, doubleVal, strVal, boolVal) = firstTuple
print(boolVal)
let (_, _, strValTwo, _) = firstTuple
let lastItem: Bool = firstTuple.3

let secondTuple = (valueInt: 1, valueDouble: 30.456,valueStr: "Vika")

print(secondTuple.0)
print(secondTuple.valueInt)
if secondTuple.0 == secondTuple.valueInt {
    print(secondTuple.0 == secondTuple.valueInt)
}
