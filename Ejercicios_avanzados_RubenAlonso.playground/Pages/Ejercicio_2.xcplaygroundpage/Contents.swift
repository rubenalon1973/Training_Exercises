import UIKit

/*
 Ejercicio 2:
 Crea una calculadora parcializada. Primero una función que devuelva el closure para realizar una operación aritmética, y que con su resultado lo aplique al número que queramos.
 */

enum Operation {
    case sum
    case rest
    case mult
    case div
}

func createOperation(_ operators: Operation) -> (Double) -> (Double) -> Double {
    switch operators {
    case .sum:
        return { num in
            { x in num + x }
        }
    case .rest:
        return { num in
            { x in num - x }
        }
    case .mult:
        return { num in
            { x in num * x }
        }
    case .div:
        return { num in
            { x in num / x }
        }
    }
}

let sum = createOperation(.sum)
let sumResult = sum(5)
let finalResult = sumResult(3)
print(finalResult)
