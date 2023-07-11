import Foundation

/*
Ejercicio 3:
Convierte la función del ejercicio 1 en una calculadora con control de errores en vez de devolver datos opcionales.
*/

enum Operacion {
    case suma
    case resta
    case mult
    case div
}

enum CalculadoraErrors: Error {
    case invalidNums
    
    var description: String {
        switch self {
        case .invalidNums:
            return "El array no puede estar vacío y debe de tener más de un número"
        }
    }
}

func calculadoraCifras(_ nums: [Int], op: Operacion = .suma) throws -> Int? {
    guard let initialResult = nums.first, nums.count > 1 else { throw CalculadoraErrors.invalidNums }

    
    switch op {
    case .suma:
        return nums.dropFirst().reduce(initialResult, +)
    case .resta:
            return nums.dropFirst().reduce(initialResult, -)
    case .mult:
        return nums.dropFirst().reduce(initialResult, *)
    case .div:
            return nums.dropFirst().reduce(initialResult, /)
    }
}

try calculadoraCifras([15,3], op: .suma)
try calculadoraCifras([15,3], op: .resta)
try calculadoraCifras([15,3], op: .mult)
try calculadoraCifras([15,3], op: .div)
