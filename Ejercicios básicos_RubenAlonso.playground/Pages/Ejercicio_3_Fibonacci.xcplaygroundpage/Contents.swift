import Foundation

/*
 Realice un programa capaz de devolver el total de números de la
 secuencia de Fibonacci, en orden desde el primero, que el usuario pida.
 ALGORITMO: La secuencia de Fibonacci se obtiene de, a partir de los dos
 primeros números 1 y 2, sumar las dos posiciones anteriores de forma
 consecutiva para obtener el nuevo valor: 1, 1, 2, 3, 5, 8, 13, 21…
 */




let number = 80

var fibonacci = [1, 1]

if number >= 2 {
    for i in 2..<number {
        let nextFib = (fibonacci[i-1]) + (fibonacci[i-2])
        // Salir del bucle si el número de elementos en el array supera el límite establecido
        if nextFib > Int.max {
            break
        }
        fibonacci.append(nextFib)
    }
}

let addYFibonacci = addYString(fibonacci)
print("El total de números de la secuencia de Fibonacci del número \(number) es:\n\n\(addYFibonacci)")


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

