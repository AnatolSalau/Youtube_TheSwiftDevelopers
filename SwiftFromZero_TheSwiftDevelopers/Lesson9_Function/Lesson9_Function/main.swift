//
//  main.swift
//  Lesson9_Function
//
//  Created by Anatoly Salov on 25.02.22.
//

import Foundation

print("Hello, World!")

/*
 * func nameFunction(add parameters) -> return parameters {
    ... body of function
 }
 */

func voidHi() {
    print("Hello")
}

voidHi()


var arrayOne = [String]()

func appendElementToArray (array:[String], name: String, profession: String) -> [String] {
    var newArray = array
    newArray.append(name)
    newArray.append(profession)
    return newArray
}

print(appendElementToArray(array:arrayOne, name: "Anatoly", profession: "Programmer"))

func appendElementToArrayInoun (array: inout[String], name: String, profession: String){
    array.append(name)
    array.append(profession)
}

appendElementToArrayInoun(array: &arrayOne, name: "Vika", profession: "Programmer")
print(arrayOne)

func generalFunc(answer: Bool) -> () -> String {
    func sayYes() -> String {
        return "Yes"
    }
    func sayNo() -> String {
        return "No"
    }
    
    return answer ? sayYes : sayNo
}
 
let test = generalFunc(answer: true)()
print(test)
