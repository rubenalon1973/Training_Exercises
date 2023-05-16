import Foundation

/*
 
 Ejercicio 11:
 Crea una clase hija de Libro que será Libro Físico y Libro Electrónico. En el primero registra el número de páginas del libro y en el segundo la URL donde puede comprarse en formato electrónico. Crea 4 subclases, 2 de libro físico y 2 de libro electrónico.
 */

class Book {
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

class PaperBook: Book {
    var numberOfPages: Int
    
    init(title: String, author: String, year: Int, numberOfPages: Int) {
        self.numberOfPages = numberOfPages
        super.init(title: title, author: author, year: year)
    }
}

class Ebook: Book {
    let urlEbook:URL
    
    init(title: String, author: String, year: Int, urlEbook:URL) {
        self.urlEbook = urlEbook
        super.init(title: title, author: author, year: year)
    }
}

class LongBook: PaperBook {
    let thriller: String
    let romantic: String
    let novel: String
    let history: String
    
    init(title: String, author: String, year: Int, numberOfPages: Int, thriller: String, romantic: String, novel: String, history: String) {
        self.thriller = thriller
        self.romantic = romantic
        self.novel = novel
        self.history = history
        super.init(title: title, author: author, year: year, numberOfPages: numberOfPages)
    }
}

class ShortBook: PaperBook {
    let story: String
    let cooking: String
    let sport: String
    
    init(title: String, author: String, year: Int, numberOfPages: Int, story: String, cooking: String, sport: String) {
        self.story = story
        self.cooking = cooking
        self.sport = sport
        super.init(title: title, author: author, year: year, numberOfPages: numberOfPages)
    }
}

class AudioBook: Ebook {
    let stereo: String
    let mono: String
    let spacial: String
    
    init(title: String, author: String, year: Int, urlEbook: URL, stereo: String, mono: String, spacial: String) {
        self.stereo = stereo
        self.mono = mono
        self.spacial = spacial
        super.init(title: title, author: author, year: year, urlEbook: urlEbook)
    }
}
class Epub: Ebook {
    let appleStore: String
    let googleStore: String
    
    init(title: String, author: String, year: Int, urlEbook: URL, appleStore: String, googleStore: String) {
        self.appleStore = appleStore
        self.googleStore = googleStore
        super.init(title: title, author: author, year: year, urlEbook: urlEbook)
    }
}
let firstBook = LongBook(title: "OneBook", author: "SomeOne", year: 2000, numberOfPages: 1000, thriller: "Thriller", romantic: "" , novel: "", history: "")
print("The \(firstBook.title) was written by \(firstBook.author) in \(firstBook.year), and its a \(firstBook.thriller)")
