import Foundation

/*
 
 Ejercicio 6:
 Crea un diccionario que contenga el nombre y la edad de 10 personas. Luego, obtén el dato de cada uno de ellos y busca la persona que tiene más edad y la que menos de todo el diccionario.
 */

let dictionary: Dictionary = ["Marcos":19, "Raúl":17, "Alma":10, "Rubén":50, "Celia":14, "Mayte":46, "Pedro":79, "Toñi":73, "Pili":50, "Elías":50]


if let oldest = dictionary.max(by: { $0.value < $1.value }) {
    print("The oldest person in the dictionary is \(oldest.key) and is \(oldest.value) years old.")
} else {
    print("The dictionary is empty.")
}

if let youngest = dictionary.min(by: { $0.value < $1.value }) {
    print("The youngest person in the dictionary is \(youngest.key) and is \(youngest.value) years old.")
}








