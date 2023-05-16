import Foundation

/*
 Ejercicio 15
 Agrega un método a la clase Libro del ejercicio 10 llamado prestar que reciba un parámetro con el tipo Persona del ejercicio 8 y muestre un mensaje en la consola indicando que el libro ha sido prestado a la persona con el nombre de dicha persona. Luego, crea un objeto de la clase Libro e inicializa las propiedades con valores y llama al método prestar para prestar el libro a una Persona.

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
}

final class Book {
    let title: String
    let author: String
    let year: Int
    
    init(title: String, author: String, year: Int ) {
        self.title = title
        self.author = author
        self.year = year
    }
    func information() -> String {
        return "\(title), \(author), \(year)."
    }
    func lendBook(person: People) {
        print("El libro: '\(title)', ha sido prestado a \(person.name).")
    }
}

let bookFour = Book(title: "Viva la cocina fácil", author: "Juan", year: 2020)
let personFour = People(name: "Pepe", age: 30, address: "La Luna")

bookFour.lendBook(person: personFour)
