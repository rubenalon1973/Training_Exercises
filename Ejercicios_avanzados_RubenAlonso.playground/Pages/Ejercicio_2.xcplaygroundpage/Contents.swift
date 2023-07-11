import UIKit

/*
 Ejercicio 2:
 Crea una calculadora parcializada. Primero una función que devuelva el closure para realizar una operación aritmética, y que con su resultado lo aplique al número que queramos.
 */

enum Operacion {
    case suma
    case resta
    case mult
    case div
}

func crearOperacion(_ operador: Operacion) -> (Double) -> (Double) -> Double {
    switch operador {
    case .suma:
        return { numero in
            return { x in
                return numero + x
            }
        }
    case .resta:
        return { numero in
            return { x in
                return numero - x
            }
        }
    case .mult:
        return { numero in
            return { x in
                return numero * x
            }
        }
    case .div:
        return { numero in
            return { x in
                return numero / x
            }
        }
    }
}

let suma = crearOperacion(.suma)
let resultadoSuma = suma(5)
let resultadoFinal = resultadoSuma(3)
print(resultadoFinal)
