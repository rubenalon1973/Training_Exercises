import Foundation

/*
 Ejercicio 9:
 Cree un programa capaz de obtener la media aritmética de una sucesión de
 números dentro de un array.
 */

//Promedio Es la media aritmética y se calcula sumando un grupo de números y dividiendo a continuación por el recuento de dichos números

let arrayNum = [7,9,18,34,8,3]
var sumArrayNum:Double = 0


for i in arrayNum {
    sumArrayNum += Double(i)
    }
sumArrayNum
arrayNum.count
let mediArrayNum:Double = sumArrayNum / Double(arrayNum.count)
print("La media aritmética de la secuencia \(arrayNum.map { String($0) }.joined(separator: ", ")) es igual a:\n\(mediArrayNum)")
