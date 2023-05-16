
import Foundation


/*
 Ejercicio 16
 Agrega un método a la estructura Punto del ejercicio 12 llamado distancia que reciba un parámetro otroPunto de tipo Punto y calcule y devuelva la distancia entre el punto actual y el punto recibido como parámetro. Luego, crea dos objetos de la estructura Punto e inicializa las propiedades con valores y llama al método distancia para calcular y mostrar la distancia entre los dos puntos en la consola.
 */

// MARK: Fórmula distancia entre 2 puntos en eje cartesiano: "distancia = raíz cuadrada [(x2 - x1)^2 + (y2 - y1)^2]"


struct Point {
    var x: Double
    var y: Double
    
    mutating func move(x2: Double, y2: Double)  {
        self.x = x2
        self.y = y2
    }
    func distance(otherPoint: Point) -> Double {
        return sqrt(((otherPoint.x - x) * (otherPoint.x - x)) + ((otherPoint.y - y) * (otherPoint.y - y)))
    }
}
let actualPoint = Point(x: 10, y: 20)
let anotherPoint = Point(x: 4, y: 12)
actualPoint.distance(otherPoint: anotherPoint)

