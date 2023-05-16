import Foundation

/*
 Ejercicio 6:
 Cree un programa con un conjunto con el número de elementos que diga el
 usuario, lleno de números primos. Cree un algoritmo capaz de calcular
 otro conjunto de números aleatorios que tenga al menos 3 elementos en
 común con el conjunto inicial.
 */

// Primos: 2, 3, 5, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97....


//MARK: VS with function:

func contarPrimos(_ numeros: [Int]) -> String {
    var cantidad = 0
    var primos = [Int]()
    for numero in numeros {
        if isPrime(numero) {
            cantidad += 1
            primos.append(numero)
        }
    }
    var resultado = ""
    for (indice, primo) in primos.enumerated() {
        resultado += "\(primo)"
        if indice == primos.count - 2 {
            resultado += " y "
        } else if indice != primos.count - 1 {
            resultado += ", "
        }
    }
    if cantidad == 0 {
        resultado = "No se encontraron números primos en el array."
    } else {
//        metemos condición para que imprima en sing. o plural
        resultado = "Hay \(cantidad) número\(cantidad == 1 ? "" : "s") primo\(cantidad == 1 ? "" : "s") en el array: " + resultado
    }
    return resultado
}

let numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
let resultado = contarPrimos(numeros)
print(resultado)


