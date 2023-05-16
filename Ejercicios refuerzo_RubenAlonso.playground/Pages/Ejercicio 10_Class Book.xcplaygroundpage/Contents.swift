import Foundation

/*
 Ejercicio 10:
 Crea una clase llamada Libro con las propiedades título, autor y año. Crea 5 libros. Ahora con esta clase haz lo siguiente:
 - Crea un método información que muestre en una sola cadena el título, - autor y año de publicación del mismo.
 - Crea una función que reciba dos libros y diga si son del mismo autor.
 - Crea una función que reciba dos libros y diga si son del mismo año.
 */

//Creamos una clase final Book con las propiedades y sus
//Creamos la func para sacar una cadena seguida con las 3 propiedades de la clase, dev su interpolación
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

//Creamos cinco libros, de los cuales hay dos con el mismo nombre y autor
let firstBook = Book(title: "Book1", author: "Author1", year: 1973)
let secondBook = Book(title: "Book2", author: "Author2", year: 1974)
let thirdBook = Book(title: "Book3", author: "Author3", year: 1975)
let fourthBook = Book(title: "Book4", author: "Author4", year: 1976)
let fifthBook = Book(title: "Book5", author: "Author1", year: 1973)


//Creamos la func para verificar si dos libros tuvieran el mismo autor, con la entrada de dos libros tipo Book, y dev Bool, haciendo una comparación con los dos y su prop de autor de la clase Book
func theSameAuthor(book1: Book, book2: Book) -> Bool {
    return book1.author == book2.author //podemos prescindir del return
}
func theSameYear(book1: Book, book2: Book) -> Bool {
    return book1.year == book2.year //podemos prescindir del return
}
//Llamamos a la func information printándola a través de las instancias de los libros creados, pq está dentro del ámbito de la clase
print(firstBook.information())
print(secondBook.information())
print(thirdBook.information())
print(fourthBook.information())
print(fifthBook.information())

//La func theSameAuthor la podemos llamar directamente, al estar en el ámbito global
print(theSameAuthor(book1: firstBook, book2: secondBook))
print(theSameAuthor(book1: secondBook, book2: thirdBook))
print(theSameAuthor(book1: thirdBook, book2: firstBook))
print(theSameAuthor(book1: fourthBook, book2: thirdBook))
print(theSameAuthor(book1: fifthBook, book2: secondBook))
print(theSameAuthor(book1: fifthBook, book2: firstBook))

print(theSameYear(book1: firstBook, book2: secondBook))
print(theSameYear(book1: secondBook, book2: thirdBook))
print(theSameYear(book1: thirdBook, book2: firstBook))
print(theSameYear(book1: fourthBook, book2: thirdBook))
print(theSameYear(book1: fifthBook, book2: secondBook))
print(theSameYear(book1: fifthBook, book2: firstBook))
