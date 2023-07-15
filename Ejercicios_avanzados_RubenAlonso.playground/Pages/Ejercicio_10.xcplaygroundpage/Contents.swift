import Foundation

/*
 Ejercicio 10:
 Tenemos este struct de datos:
 
 struct Genres: Codable {
 let genres: [Genre]
 }
 struct Genre: Codable { let id: Int
 let name: String }
 Teniendo un dato origen que es un array con los ids numéricos, crea
 una expresión en programación funcional que recupere el nombre de
 cada género partiendo solo de un array de enteros con IDs.
 */

struct Genres: Codable {
    let genres: [Genre]
}
struct Genre: Codable {
    let id: Int
    let name: String }

let arrayGender = Genres(genres: [
Genre(id: 1, name: "First"),
Genre(id: 3, name: "Second"),
Genre(id: 4, name: "Third"),
Genre(id: 5, name: "Fourth"),
Genre(id: 6, name: "fifth"),
Genre(id: 7, name: "Sixth")
])

let ids: [Int] = [2,1,6,4]
let genreNames = ids.compactMap { id in
    arrayGender.genres.first(where: { $0.id == id })?.name
}

print(genreNames)
