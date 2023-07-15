import Foundation

/*
 Refactoriza la función calculadoraCifras utilizando solo funciones de
 orden más alto de la programación funcional y enumeraciones. Intenta
 usar el mínimo de código posible.
 */

enum Operation {
    case sum
    case rest
    case mult
    case div
}

func calculatorNums(_ nums: [Int], op: Operation = .sum) -> Int? {
    guard let initialResult = nums.first, nums.count > 1 else { return nil }
    
    switch op {
    case .sum:
        return nums.dropFirst().reduce(initialResult, +)
    case .rest:
        return nums.dropFirst().reduce(initialResult, -)
    case .mult:
        return nums.dropFirst().reduce(initialResult, *)
    case .div:
        return nums.dropFirst().reduce(initialResult, /)
    }
}

calculatorNums([15,3])
calculatorNums([15,3], op: .rest)
calculatorNums([15,3], op: .mult)
calculatorNums([15,3], op: .div)




