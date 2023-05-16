import Foundation

/*
 Ejercicio 9:
 Crea un struct de un Rectángulo, que tendrá las propiedades de ancho y alto del mismo. Crea varios rectángulos y construye una función que te permita saber cuál es el más grande y el más pequeño según su área, que obtenemos multiplicando ancho por alto.
 */

struct Rectangle {
    var width: Double
    var height: Double
    
    func area() -> Double {
        width * height
    }
}

let arrayRectangles = [
    Rectangle(width: 20, height: 20),
    Rectangle(width: 40, height: 30),
    Rectangle(width: 80, height: 100),
    Rectangle(width: 3.5, height: 2.6)
]

let sortedRectangles = arrayRectangles.sorted { $0.area() < $1.area() }

if let smallest = sortedRectangles.first {
    print("El rectángulo más pequeño de los \(arrayRectangles.count) creados, es el que tiene un área de \(smallest.area())")
}

if let largest = sortedRectangles.last {
    print("El rectángulo más grande de los \(arrayRectangles.count) creados ,es el que tiene un área de \(largest.area())")
}

