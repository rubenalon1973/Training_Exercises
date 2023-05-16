import Foundation

/*
 
 Ejercicio 2:
 Crea 4 datos distintos de distintos tipos de datos numéricos y realiza 10 operaciones aritméticas con ellos: suma, resta, multiplicación, división y resto de división. Combina varias operaciones en una sola.
 */
let data1 = 6
let data2 = 2
let data3 = "Good "
let data4 = "Morning."
let data5 = 8
let data6 = 100
let data7 = 10.0
let data8 = 5.0
let data9 = 7.9

//Para poder hacer las operaciones, los datos tienen que ser del mismo tipo de dato:
let sum = data3 + data4
let rest = data2 - data1
let multiply = data2 * data1
let division = data1 / data2
let module1 = data1 % data2
let module2 = data6 % data5
let prueba = Int(data9)//También podemos convertir el dato antes de operar, de esta forma

let module4 = Int(data7) % Int(data8)
//Para poder utilizar el operador módulo con decimales(Double) utilizamos el método truncatingRemainder de Double
let module3 = data7.truncatingRemainder(dividingBy: data8)
let multiOperation = (((data6 - data1) + (data6 / data1)) * data5) % data6



