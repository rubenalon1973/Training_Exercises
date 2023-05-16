import SwiftUI

/* Realice un programa que sea capaz de contar el total de números primos
 que haya en un array de números enteros.
 */

//Se conoce como número primo a cada número natural que sólo puede dividirse por 1 y por sí mismo. El 1 no es y el 2 es el único primo par


let arrayTotal:[Int] = Array(0...100)
var arrayPrimos:[Int] = []

for number in arrayTotal where isPrime(number)  {
    arrayPrimos.append(number)
}

let addYArrayPrimos = addYString(arrayPrimos)
print("Hay \(arrayPrimos.count) números primos y son los siguientes:\n\(addYArrayPrimos)")




