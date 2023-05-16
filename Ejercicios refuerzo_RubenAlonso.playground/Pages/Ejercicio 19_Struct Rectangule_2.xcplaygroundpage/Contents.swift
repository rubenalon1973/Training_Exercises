//: [Previous](@previous)

import Foundation

/*
 Ejercicio 19
 Crea una propiedad calculada para calcular el área del rectángulo del ejercicio 9. Luego crea una función separada de este struct llamada calcularAreaRectangulos que tome como parámetros un array de Rectángulo y calcule el área total de todos los rectángulos. Luego, crea un array de objetos Rectángulos e inicializa las propiedades con valores y llama a la función calcularAreaRectangulos para calcular y mostrar el área total en la consola. Realiza la implementación mediante programación estructurada con bucles for pero también por programación funcional.
 */

struct Rectangle {
    var width: Double
    var height: Double
    
    var area: Double {
        width * height
    }
}

let arrayRectangles = [
    Rectangle(width: 20, height: 20),
    Rectangle(width: 40, height: 30),
    Rectangle(width: 80, height: 100),
    Rectangle(width: 3.5, height: 2.6)
]

// MARK: OPCIÓN ESTRUCTURADA
func calcularAreaRectangulos(array: [Rectangle]) -> Double {
    var areaAll = 0.0
    for n in array {
        areaAll += n.area
    }
    return areaAll
}
let result = calcularAreaRectangulos(array: arrayRectangles)
print("El área total de nuestro arrayRectangules es \(result)")

// MARK: OPCIÓN FUNCIONAL

let resultFunc = arrayRectangles.reduce(0, { $0 + $1.area })
