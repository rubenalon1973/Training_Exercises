//: [Previous](@previous)

import Foundation

/*
 Ejercicio 20
 Crea una función llamada prestarLibro para que tome como parámetros un objeto de la clase Libro de los ejercicios 10 y 15 y una persona de los ejercicios 14, 15 y 18 y muestre un mensaje en la consola indicando que el libro ha sido prestado a la persona con el nombre recibido como parámetro. Luego, crea un objeto de la clase Libro e inicializa las propiedades con valores y llama a la función prestarLibro para prestar el libro a una persona.
 */

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
}

let firstBook = Book(title: "Book1", author: "Author1", year: 1973)

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


func prestarLibro(book: Book, person: People) {
    print("El libro: '\(book.title)', ha sido prestado a \(person.name)")
}

let lastBook = Book(title: "Book8", author: "Author8", year: 2023)
prestarLibro(book: lastBook, person: firstPerson)
