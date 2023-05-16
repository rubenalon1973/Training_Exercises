import Foundation

/*
 Ejercicio 12:
 Crea una estructura llamada Punto con las propiedades x e y. Agrega un método a la estructura llamado mover que reciba dos parámetros (x e y) y actualice las propiedades de x e y con los nuevos valores. Luego, crea un objeto de esta estructura e inicializa las propiedades con valores y llama al método mover para cambiar la posición del punto.
 */



struct Point {
    var x: Int
    var y: Int
    
    mutating func move(x2: Int, y2: Int)  {
        self.x = x2
        self.y = y2
    }
}
var moving = Point(x: 4, y: 2)
moving.move(x2: 8, y2: 6)

