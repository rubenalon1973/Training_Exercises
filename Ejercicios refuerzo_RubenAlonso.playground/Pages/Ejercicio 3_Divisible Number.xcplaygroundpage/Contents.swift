import Foundation
/*
 Ejercicio 3:
 Realiza un algoritmo que sea capaz de discernir si un número es divisible por otro, en distintos tipos de datos numéricos, con o sin precisión decimal.
 */




// Creamos una func con dos p.ent para q nos dev Bool? y si es divisible dev true y si no false
func divisionNumber(number1:Double, by number2:Double) -> Bool? {
//    nos aseguramos de que el divisor no sea cero y si lo es dev nil,
    guard number2 != 0 else { return nil }
//    Declaramos una instancia para sacar la propiedad de Double truncatingRemainder, pq con este tipo no se puede utilizar el operador módulo %
    let module = number1.truncatingRemainder(dividingBy: number2)
//    Si es resto de la div. es cero es divisible:
    if module == 0 {
        return true 
    } else {
        return false
    }
}
// Declaramos las instancias para asignarles valores, y así poder interpolar las instancias en los print:
let number1: Double = 0
let number2: Double = 3.20
let result = number1 / number2

// Como el resultado de la función es opcional, hacemos un if let para unwrapp:
if let isDivisible = divisionNumber(number1: number1, by: number2) {
//    si es true print divisible y si no no divisible
    if isDivisible {
        print("\(number1) is divisible between \(number2), and its result is: \(result)")
    } else {
        print("\(number1) is not divisible between \(number2), and its result is: \(result)")
    }
//    este else va dentro de del if let, y si el valor es cero en el divisor hace este print
    } else {
        print("Cannot be divided by 0")
    }




