import Foundation

/*
Ejercicio 3:
Convierte la función del ejercicio 1 en una calculadora con control de errores en vez de devolver datos opcionales.
*/

enum Operation {
    case sum
    case rest
    case mult
    case div
}

enum ControlErrors: Error {
    case invalidNums
    
    var description: String {
        switch self {
        case .invalidNums:
            return "The array cannot be empty and must have more than one number"
        }
    }
}

func calculatorNums(_ nums: [Int], op: Operation = .sum) throws -> Int? {
    guard let initialResult = nums.first, nums.count > 1 else { throw ControlErrors.invalidNums }

    
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

try calculatorNums([15,3], op: .sum)
try calculatorNums([15,3], op: .rest)
try calculatorNums([15,3], op: .mult)
try calculatorNums([15,3], op: .div)
