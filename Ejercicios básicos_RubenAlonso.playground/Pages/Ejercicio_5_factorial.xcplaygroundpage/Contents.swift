import Foundation
/*
 Ejercicio 5:
 Realice un programa capaz de sumar las distintas cifras del factorial de
 un número indicado:
 EJEMPLO: 5! = 5 * 4 * 3 * 2 * 1 = 120 -> 1 + 2 + 0 = 3
 */

//MARK: VS without function:


print("Calculado sin función:\n")
let numero = 5

var factorial = 1
for i in 1...numero {
    factorial *= i
}

var suma = 0
var num = factorial
while num > 0 {
    suma += num % 10
    num /= 10
}
print("La suma del factorial de \(numero) \nes igual a \(factorial), cuyos dígitos suman \(suma).\n")

//MARK: VS with function:

print("Calculado con función:\n")
func factorial1(num1: Int) -> Int {
    if num1 == 0 {
        return 1
    } else {
        return num1 * factorial1(num1: num1 - 1)
    }
}

func sumarCifras(_ num1: Int) -> Int {
    var sum1 = 0
    var num1 = num1
    while num1 > 0 {
        sum1 += num1 % 10
        num1 /= 10
    }
    return sum1
}

let numero1 = 5

let fact = factorial1(num1: numero1)
let suma2 = sumarCifras(fact)

print("La suma del factorial de \(numero1) \nes igual a \(fact), cuyos dígitos suman \(suma2).")


