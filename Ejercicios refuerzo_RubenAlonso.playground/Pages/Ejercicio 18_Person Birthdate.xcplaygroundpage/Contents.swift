
import Foundation

/*
 Ejercicio 18
 Agrega un método a la clase Persona llamado birthdate que aumente la edad de la persona en 1. Luego, crea un objeto de la clase Persona e inicializa las propiedades con valores y llama al método birthdate.
 
 */

final class People {
    var name: String
    var age: Int
    var address: String
    
    init(name: String, age: Int, address: String) {
        self.name = name
        self.age = age
        self.address = address
    }
    func namebirthdate() {
        age += 1
    }
}

let firstPerson = People(name: "Marcos", age: 19, address: "Burguete 11")
let secondPerson = People(name: "Raúl", age: 17, address: "Burguete 13")
let thirdPerson = People(name: "Alma", age: 10, address: "Burguete 14")
let fourthPerson = People(name: "Celia", age: 14, address: "Burguete 15")
let fifthPerson = People(name: "Rubén", age: 50, address: "Burguete 16")

fifthPerson.address
let sixthPerson = People(name: "Pepe", age: 40, address: "Gran Vía 12")
sixthPerson.age
sixthPerson.namebirthdate()
sixthPerson.age
