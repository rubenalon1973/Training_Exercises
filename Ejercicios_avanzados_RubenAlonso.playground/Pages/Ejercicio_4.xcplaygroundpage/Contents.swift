import Foundation

/*
 Ejercicio 4:
 Crea una función capaz de calcular el factorial de un número cualquiera, usando programación recursiva. Haz las versiones con y sin uso de memorización de funciones para ver la diferencia de rendimiento.
 EJEMPLO: 5! = 5 * 4 * 3 * 2 * 1 = 120
 */
//MARK: Recursividad
/*
 Es importante tener en cuenta que la elección entre ambas funciones depende del contexto y de los requisitos específicos de tu aplicación. Si la optimización del tiempo de ejecución es crucial y el consumo de memoria no es un problema, la función factorialMem con memorización sería la opción preferida. Sin embargo, si el consumo de memoria es una preocupación importante y los números con los que trabajas no son excesivamente grandes, la función factorial sin memorización puede ser suficiente.
 */

//MARK: Vs sin memorización
func factorial(num1: Int) -> Int {
    if num1 <= 1 {
        return 1
    } else {
        return num1 * factorial(num1: num1 - 1)
    }
}
//MARK: Vs con memorización para almacenar los resultados anteriores.

func factorialMem(num2: Int) -> Int {
    var mem = [Int:Int]()
    
    if let result = mem[num2] {
        return result
    }
    if num2 <= 1 {
        return 1
    }
    let result = num2 * factorialMem(num2: num2 - 1)
    print(result)
    mem[num2] = result
    print(mem)
    
    return result
}



// Número para calcular el factorial
let number = 5

// Mide el tiempo antes de llamar a factorial
let startTime1 = Date()
let result1 = factorial(num1: number)
let endTime1 = Date()

// Calcula la diferencia de tiempo
let timeElapsed1 = endTime1.timeIntervalSince(startTime1)
print("Tiempo de ejecución para factorial: \(timeElapsed1) segundos")

// Mide el tiempo antes de llamar a factorialMem
let startTime2 = Date()
let result2 = factorialMem(num2: number)
let endTime2 = Date()

// Calcula la diferencia de tiempo
let timeElapsed2 = endTime2.timeIntervalSince(startTime2)
print("Tiempo de ejecución para factorialMem: \(timeElapsed2) segundos")
