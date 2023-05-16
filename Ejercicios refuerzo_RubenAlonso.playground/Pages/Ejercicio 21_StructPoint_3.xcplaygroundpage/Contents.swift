
import Foundation

/*
 Ejercicio 21
 Crea una función llamada filtrarPuntos que tome como parámetros un array de objetos Punto de los ejercicios 12 y 16 y una distancia límite. Devuelve un array con los puntos que se encuentran dentro de la distancia límite. Luego, crea un array de objetos Punto e inicializa las propiedades con valores y llama a la función filtrarPuntos para obtener un array con los puntos dentro de la distancia límite. Realiza esta función mediante programación estructurada y con programación funcional.
 */

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
func filterPoints(points: [Point], distance: Double) -> [Point] {
    var result:[Point] = []
    for point in points {
        if point.distance(otherPoint: points[1]) <= distance {
            result.append(point)
        }
    }
    return result
}

func filterPoints2(points: [Point], referencePoint: Point, distance: Double) -> [Point] {
    
    var result:[Point] = []
    for point in points {
        if point.distance(otherPoint: referencePoint) <= distance {
            result.append(point)
        }
    }
    return result
}
let arrayPoints:[Point] = [Point(x: 5, y: 5), Point(x: 3, y: 2), Point(x: 20, y: 40)]
let filterPointsMaxDistance = filterPoints2(points: arrayPoints, referencePoint: Point(x: 0, y: 0), distance: 10)


