
import Foundation


/*
 Ejercicio 14
 Agrega un método a la clase Persona del ejercicio 8 llamado saludar que muestre un mensaje de saludo personalizado en la consola, utilizando el nombre de la persona. Luego, crea un objeto de la clase Persona e inicializa las propiedades con valores y llama al método saludar
 */

final class People {
    let name: String
    let age: Int
    let address: String
    
    init(name: String, age: Int, address: String) {
        self.name = name
        self.age = age
        self.address = address
    }
    func greeting() {
        print("Hello, my name is \(name)")
    }
}
let firstPerson = People(name: "Marcos", age: 19, address: "Burguete 11")
firstPerson.greeting()
