import Foundation

/*
 
 Ejercicio 6:
 Crea un diccionario que contenga el nombre y la edad de 10 personas. Luego, obtén el dato de cada uno de ellos y busca la persona que tiene más edad y la que menos de todo el diccionario.
 */

//Creamos el dic. con claves y valores
let dictionary: Dictionary = ["Marcos":19, "Raúl":17, "Alma":10, "Rubén":50, "Celia":14, "Mayte":46, "Pedro":79, "Toñi":73, "Pili":50, "Elías":50]
//let dictionary = [String:Int]() Así sería un diccionario vacío, recuerda q a todas las colecciones


//Creamos los if let para manejar los valores opc q dev las func max(by: ) y min(by: ),que son métodos del tipo Dictionary de tipo "throw"(y necesitan un control de errores)
//Utilizamos el closure, que le entran los pares del dic. y dev Bool
//Con la func max y los PARÁMETROS ABREVIADOS ANÓNIMOS($0, $1) recorremos y comparamos los value de los pares de diccionario y si $0 < $1 dev true(toma $1 como valor máx), y si $0  > ó =  $1 dev false(toma $0 como valor máx)
//Entonces almacena el valor max en oldest
if let oldest = dictionary.max(by: { $0.value < $1.value }) {
//   Imprimimos con interpolación la clave y valor del dic
    print("The oldest person in the dictionary is \(oldest.key) and is \(oldest.value) years old.")
//     Si el dic está vacío se sale por aquí
} else {
    print("The dictionary is empty.")
}

//Con la func min y los PARÁMETROS ABREVIADOS ANÓNIMOS($0, $1) recorremos y comparamos los value de los pares de diccionario y si $0 < $1 dev true(toma $1 como valor min), y si $0  > ó =  $1 dev false(toma $0 como valor min)
//     Entonces almacena el valor max en youngest
if let youngest = dictionary.min(by: { $0.value < $1.value }) {
//     Imprimimos con interpolación la clave y valor del dic
    print("The youngest person in the dictionary is \(youngest.key) and is \(youngest.value) years old.")
}








