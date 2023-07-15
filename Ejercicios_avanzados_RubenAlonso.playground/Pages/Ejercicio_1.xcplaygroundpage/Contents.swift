import Foundation

/*
 Refactoriza la función calculadoraCifras utilizando solo funciones de
 orden más alto de la programación funcional y enumeraciones. Intenta
 usar el mínimo de código posible.
 */

enum Operacion {
    case suma
    case resta
    case mult
    case div
}

func calculadoraCifras(_ nums: [Int], op: Operacion = .suma) -> Int? {//coge la suma x defect
    guard let initialResult = nums.first, nums.count > 1 else { return nil }
    
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

calculadoraCifras([15,3])//no hace falta indicar suma
calculadoraCifras([15,3], op: .resta)
calculadoraCifras([15,3], op: .mult)
calculadoraCifras([15,3], op: .div)





