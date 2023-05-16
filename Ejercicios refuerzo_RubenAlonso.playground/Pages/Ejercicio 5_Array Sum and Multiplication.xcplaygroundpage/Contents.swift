import Foundation

/*
 Ejercicio 5:
 Crea un array de números enteros y calcula su resultado sumando los valores impares y multiplicando por sus valores pares.
 */
//MAL RESULTADO COMPROBAR EJERCICIO
let array = [1,2,3,4,5,6,7,8,9]
//Creamos una var con 0 para la suma
var sumArrayOdd = 0
//Creamos una var con 1 para la mult. pq con 0 no vale
var multArrayEver = 1

//Recorremos con un for el array y si n es divisible entre 2(pares) mult. y lo almacena en multArrayEver, y si no es divisible(impares) suma y lo almacena en sumArrayOdd
for n in array {
//    Nos aseguramos de que si el array tiene un 0, no lo tome en cuenta en las operaciones:
    guard n != 0 else { continue }//también podemos poner where número != 0 para ahorrarnos el guard
    if n % 2 == 0 {
        multArrayEver *= n
    } else {
        sumArrayOdd += n
    }
}
//Imprimimos resultados con interpolación:
print("The sum of the odd array elements is \(sumArrayOdd) and the multiplication of even array elements is \(multArrayEver).")

//
//let suma = miArray.filter({ $0 % 2 != 0}).reduce(0, { $0 + $1 } )
