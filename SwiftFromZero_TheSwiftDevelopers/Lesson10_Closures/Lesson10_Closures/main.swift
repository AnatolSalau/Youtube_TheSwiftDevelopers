//
//  main.swift
//  Lesson10_Closures
//
//  Created by Anatoly Salov on 26.02.22.
//

import Foundation

print("Hello, World!")

/*
 Замыкания являются анонимными функциями, которые можно передавать в качестве аргументов другим функциям
 {
 (Параметры) -> возвращаемый_тип in
    операторы
 }
 */

var arrayOne = [String]()
arrayOne.append("Anatoly")
arrayOne.append("Vika")
arrayOne.append("Vera")
arrayOne.append("Ivan")
print(arrayOne)
//(String, String) -> Bool

// sorted by alphabet
let arraySortedOne = arrayOne.sorted { (string1: String , string2: String) -> Bool in
    return string1 < string2
}
print(arraySortedOne)

let arraySortedTwo = arrayOne.sorted { (string1, string2) in return string1 < string2 }
print(arraySortedTwo)

let arraySortedThree = arrayOne.sorted { s1, s2 in s1 < s2 }
print(arraySortedThree)

// sorted by length

let arraySortedByLengthOne = arrayOne.sorted { (stringOne, stringTwo) in stringOne.count < stringTwo.count}
print(arraySortedByLengthOne)

//автоматические имена замыканий
let arraySortedByLengthTwo = arrayOne.sorted(by: {$0.count < $1.count})
print(arraySortedByLengthTwo)

//Захват значения с помощью замыкания

func makeTranslator(stroka: String) -> (String) -> (String) {
    return {(name: String) -> String in return (stroka + " " + name) }
}

var englishWelcome = makeTranslator(stroka: "Hello")("Jack")
print(englishWelcome)

var russiaWel = makeTranslator(stroka: "Hi")
print(russiaWel("Dima"))

