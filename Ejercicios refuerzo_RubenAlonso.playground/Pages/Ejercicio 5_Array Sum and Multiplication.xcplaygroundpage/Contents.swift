import Foundation

/*
 Ejercicio 5:
 Crea un array de números enteros y calcula su resultado sumando los valores impares y multiplicando por sus valores pares.
 */

let array = [1,2,3,4,5,6,7,8,9]
var sumArrayOdd = 0
var multArrayEver = 1

for n in array {
    guard n != 0 else { continue }
    
    if n % 2 == 0 {
        multArrayEver *= n
    } else {
        sumArrayOdd += n
    }
}
print("The sum of the odd array elements is \(sumArrayOdd) and the multiplication of even array elements is \(multArrayEver).")


