import Foundation

/*
 Ejercicio 10:
 Escribe un programa que guarde varios tipos de alimentos y su precio por
 kilo en un diccionario. Cree una forma para mostrar qué precio tendría
 cualquiera de los productos al indicar un número de kilos específico.
 */

var preciosPorKg: [String: Double] = [
    "Patata": 1.50,
    "Tomate": 0.80,
    "Cebolla": 0.75
]

let peso = 5.0

for (alimento, precio) in preciosPorKg {
    let precioTotal = precio * peso
    print("El precio de \(peso) Kg de \(alimento) es \(precioTotal) euros.")
}








