//
//  main.swift
//  Lesson11HW_Enums
//
//  Created by Anatoly Salov on 27.02.22.
//

import Foundation

print("Hello, World!")

enum Estimates: Character {
    case A = "A"
    case B = "B"
    case C = "C"
    case D = "D"
    case E = "E"
}

func getEstimates (yourEnum: Estimates) -> Character {
switch yourEnum{
    case .A:
        return Estimates.A.rawValue
    case .B:
        return Estimates.A.rawValue
    case .C:
        return Estimates.A.rawValue
    case .D:
        return Estimates.A.rawValue
    default:
        break
}
    return Estimates.E.rawValue
}

let result: Character = getEstimates(yourEnum: Estimates.A)
print(result)

let resultTwo = { (yourEnum:Estimates) -> Character in
    switch yourEnum{
        case .A:
            return Estimates.A.rawValue
        case .B:
            return Estimates.A.rawValue
        case .C:
            return Estimates.A.rawValue
        case .D:
            return Estimates.A.rawValue
        default:
            break
    }
        return Estimates.E.rawValue
}
print(resultTwo(.A))
