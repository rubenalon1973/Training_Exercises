import Foundation

/*
 Ejercicio 8:
 Construye un array con al menos 100 números aleatorios de entre 1 y 100
 y luego filtra este para obtener como resultado solo aquellos números
 que son primos entre los 100 que había al principio.
 */

//Se conoce como número primo a cada número natural que sólo puede dividirse por 1 y por sí mismo. El 1 no es y el 2 es el único primo par

var array100Aleat: [Int] = []
var arrayPrimos: [Int] = []

repeat {
    for _ in 1...100 {
        array100Aleat.append(Int.random(in: 1...100))
    }
    
    for number in array100Aleat where isPrime(number) {
        arrayPrimos.append(number)
    }
} while arrayPrimos.count == 0

let addYArray100Aleat = addYString(array100Aleat)
let addYarrayPrimos = addYString(arrayPrimos)
print("En la siguiente secuencia aleatoria de \(array100Aleat.count) números naturales:\n\(addYArray100Aleat), \n\nhay los siguientes números primos:\n\(addYarrayPrimos).")




