import Foundation

/*
 
 Ejercicio 8:
 Crea una clase que abstraiga el concepto de Personas y recoja sus datos de nombre, edad y dirección. Crea 5 personas distintas.
 */

//Creamos una final class de personas con sus prop. inicializadas:
final class People {
    var name: String
    var age: Int
    var address: String
    
    init(name: String, age: Int, address: String) {
        self.name = name
        self.age = age
        self.address = address
    }
}

//Creamos las 5 instancias de diferentes  personas asignando datos a las prop de la class:
let firstPerson = People(name: "Marcos", age: 19, address: "Burguete 11")
let secondPerson = People(name: "Raúl", age: 17, address: "Burguete 13")
let thirdPerson = People(name: "Alma", age: 10, address: "Burguete 14")
let fourthPerson = People(name: "Celia", age: 14, address: "Burguete 16")
let fifthPerson = People(name: "Rubén", age: 50, address: "Burguete 18")

fifthPerson.address
