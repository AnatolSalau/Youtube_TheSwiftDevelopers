//
//  main.swift
//  Lesson12HW_ClassStructure
//
//  Created by Anatoly Salov on 28.02.22.
//
/*
 Дополнительно(на закрепление всех пройденных тем):
 Написать программу, определяющую тип выигрышной комбинации при игре в покер.
 Программа получает на вход 5 целых положительных чисел, и должна вывести на экран одну из следующих строк:
 «poker», если все 5 чисел равны;
 «four of a kind», если ровно 4 числа равны между собой;
 «full house», если три из пяти чисел равны между собой и два оставшихся числа равны;
 «three of a kind», если ровно три числа равны;
 «two pairs», если есть две пары равных чисел;
 «one pair», если только два числа равны;
 «all different», если все числа различны

 Результат в консоли примерно такой:
 "У вас бубновый стрит флеш ".
 Подсказки:
 - для мастей можно использовать перечисления(enum),
 - В зависимости от комбинации - в консоли печатаем тот или иной ответ.
 - Комбинации можно взять отсюда:
 */
import Foundation

class GameMap {
    var cardSuit: String?
    var number: Int?
}

class Diamonds : GameMap {
    init(number: Int) {
        super.init()
        self.cardSuit = "Diamonds"
        self.number = number
    }
}

class Hearts : GameMap {
    init(number: Int) {
        super.init()
        self.cardSuit = "Hearts"
        self.number = number
    }
}

class Crosses : GameMap {
    init(number: Int) {
        super.init()
        self.cardSuit = "Crosses"
        self.number = number
    }
}

class Spades : GameMap {
    init(number: Int) {
        super.init()
        self.cardSuit = "Spades"
        self.number = number
    }
}
