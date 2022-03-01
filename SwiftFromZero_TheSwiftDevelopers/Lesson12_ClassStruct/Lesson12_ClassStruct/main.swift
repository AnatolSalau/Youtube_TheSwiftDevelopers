//
//  main.swift
//  Lesson12_ClassStruct
//
//  Created by Anatoly Salov on 27.02.22.
//

import Foundation

/*
class ИмяКласса {
    //свойства класса
    // методы этого класса
}
*/

class ParentsClass {
    var array = [String]()
    var name: String = "ParentsClass"
    var age: Int = 20
    
    init () {
        
    }
    
    init (array: String..., name: String, age: Int) {
        self.array = array
        self.name = name
        self.age = age
    }
    
    let printSomeWhere = {(printString: String)  in
        print(printString)
    }
    
    func printAge () {
        print(age)
    }
    
    
    
}

class Son : ParentsClass {
    var sex: String = ""
    
    init (array: String..., name: String, age: Int, sex: String) {
        super.init()
        self.sex = sex
        self.array = array
        self.name = name
        self.age = age
    }
    
    override func printAge() {
        print("Override")
    }
    

}
let parentInstance = ParentsClass(array: "AnayolyParent", "VikaParent", name: "Parent InstanceParent", age: 30)

print("\(parentInstance.array), \(parentInstance.name), \(parentInstance.age)")

let sonInstance = Son(array: "AnatolySon", "Vika", name: "Son Instance", age: 32, sex: "M")
print("\(sonInstance.array), \(sonInstance.name), \(sonInstance.age), \(sonInstance.sex) ")

sonInstance.printSomeWhere("Aaaaa")
parentInstance.printAge()
sonInstance.printAge()

struct car {
    var marka: String
    var color: String
}

let carInstance = car(marka: "BMW", color: "Red")

print(carInstance.marka)
print(carInstance.color)




