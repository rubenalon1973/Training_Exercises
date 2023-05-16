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

// Llenamos el array con aleatorios
for _ in 1...50 {
    randomArray.append(Int.random(in: 1...100))
}
randomArray

func arrayPrime(num: [Int]) -> String {
    var result = Set<Int>() //de tipo Set para que no se repitan los nº
    
    for n in num {
        if isPrime(n) {
            result.insert(n)
        }
    }
    return "Los números primos aleatorios de \(num) son \(result.sorted())."
}


let primeNumbers = arrayPrime(num: randomArray)
print(primeNumbers)

//MARK: Falta sacarlos del array y convertirlos en string


















