import Foundation

/*
 Realice un programa que sea capaz de determinar si un número entero positivo cualquiera es un número primo o no.
 */
//Se conoce como número primo a cada número natural que sólo puede dividirse por 1 y por sí mismo. El 1 no es y el 2 es el único primo par

//MARK: COMO EL DIAGRAMA DE FLUJO DADO EN EL EJERCICIO


func isPrime2 (num:Int) -> Bool {

    if num <= 0 {
        return false
    } else if num <= 3 {
        return true
    } else if  num % 2 == 0 || num % 3 == 0 {
        return false
    }
    var i = 5
    while   (i * i) <= num {
        if  num % i == 0 || num % (i + 2) == 0 {
            return false
        }
        i += 6
        
    }
    return true
}
     


isPrime2(num: 674329)

//Mi fx de sources
isPrime(153548601)
            
