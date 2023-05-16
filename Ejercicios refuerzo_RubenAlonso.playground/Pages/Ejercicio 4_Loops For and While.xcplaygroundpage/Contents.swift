import Foundation
/*
 
 Ejercicio 4:
 Crea dos tipos distintos de bucles que sean capaces de mostrar todos los números enteros entre 1 y 20. Usando for y while.
 */

// Con for iteramos el rango del 1 al 20 y sale cdo acaba:

for n in 1...20 {
    print(n)
}

// Con while, condición q cdo se cumple ejecuta código del ámbito, cdo no se cumple se sale
// Damos valor inicial de num a 1 para iterar el rango hasta 20 incluído, y va sumando 1 a cada posición del rango, y cdo llega al 20 ya para
var num = 1
while num <= 20 {
    print(num)
    num += 1
    }
