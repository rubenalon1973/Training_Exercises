import Foundation
/*
 Ejercicio 3:
 Realiza un algoritmo que sea capaz de discernir si un número es divisible por otro, en distintos tipos de datos numéricos, con o sin precisión decimal.
 */





func divisionNumber(number1:Double, by number2:Double) -> Bool? {
    guard number2 != 0 else { return nil }
    let module = number1.truncatingRemainder(dividingBy: number2)
    
    if module == 0 {
        return true
    } else {
        return false
    }
}

let number1: Double = 0
let number2: Double = 3.20
let result = number1 / number2

if let isDivisible = divisionNumber(number1: number1, by: number2) {
    if isDivisible {
        print("\(number1) is divisible between \(number2), and its result is: \(result)")
    } else {
        print("\(number1) is not divisible between \(number2), and its result is: \(result)")
    }
} else {
    print("Cannot be divided by 0")
}




