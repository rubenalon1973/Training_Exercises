
import Foundation

/*
 Ejercicio 1:
 Crea un array con 50 números enteros aleatorios. A partir del mismo,
 crea una cadena de respuesta que cuando encuentre que alguno de ellos es
 un número primo lo incluya. El resultado ha de ser una cadena similar a:
 “Los números primos aleatorios de esta lista son x, x, x, x, x”.
 */

//MARK: VERSIÓN ESTRUCTURADA

var randomArray = [Int]()

for _ in 1...50 {
    randomArray.append(Int.random(in: 1...100))
}
randomArray

func arrayPrime(num: [Int]) -> String {
    var result = Set<Int>()
    
    for n in num {
        if isPrime(n) {
            result.insert(n)
        }
    }
    
    let primeNumbersString = addYString(Array(result.sorted()))
    return "En la siguiente lista de números enteros aleatorios: \(addYString(num)), podemos ver que hay estos números que son primos: \(primeNumbersString)."
}

let primeNumbers = arrayPrime(num: randomArray)
print(primeNumbers)



















