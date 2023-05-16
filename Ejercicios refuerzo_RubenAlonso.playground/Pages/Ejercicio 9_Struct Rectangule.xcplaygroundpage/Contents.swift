import Foundation

/*
 Ejercicio 9:
 Crea un struct de un Rectángulo, que tendrá las propiedades de ancho y alto del mismo. Crea varios rectángulos y construye una función que te permita saber cuál es el más grande y el más pequeño según su área, que obtenemos multiplicando ancho por alto.
 */

struct Rectangle {
    var width: Double
    var height: Double
//    Declaramos la func para calcular el área, y los param de ent son las prop del struct
    func area() -> Double {
        width * height
    }
}
//Creamos un array de rectángulos:
let arrayRectangles = [
    Rectangle(width: 20, height: 20),
    Rectangle(width: 40, height: 30),
    Rectangle(width: 80, height: 100),
    Rectangle(width: 3.5, height: 2.6)
]
//Creamos la función sorted que ordena los elementos de un array según un criterio determinado. El array arrayRectangles contiene objetos del struct Rectangle q tienen dos propiedades, width y height. La función sorted recibe un closure como argumento, que define el criterio de ordenación, de menor a mayor.
//En el closure utilizamos los parámetros abreviados $0 y $1 para referirse a los dos elementos que se van a comparar en cada iteración.Utilizamos la func area() de cada objeto Rectangle para saber el área y comparar sus valores. Así el array se ordena de menor a mayor área.
let sortedRectangles = arrayRectangles.sorted { $0.area() < $1.area() }


//Hacemos if let para crear una constante cogiendo el 1º(el más peq) con la func first que dev opc. y hacer unwrapp y lo imprimimos con sus medidas interpoladas, cogiendo el más peq y su área con la func del struct en el string:
if let smallest = sortedRectangles.first {
    print("El rectángulo más pequeño de los \(arrayRectangles.count) creados, es el que tiene un área de \(smallest.area())")
}
//Hacemos condición para crear una constante cogiendo el último(el más grande) con la func last que dev opc. y hacer unwrapp y lo imprimimos con sus medidas interpoladas, cogiendo el más grande y su área con la func del struct en el string:
if let largest = sortedRectangles.last {
    print("El rectángulo más grande de los \(arrayRectangles.count) creados ,es el que tiene un área de \(largest.area())")
}

