import Foundation

/*
 Ejercicio 4:
 Realice un programa capaz de determinar si una cadena contiene un valor
 que sea palíndromo. Deberá rechazar cuando la cadena contenga más de una
 palabra para evitar errores.
 ALGORITMO: Una palabra palíndroma se lee igual en ambos sentidos.
 */

// reconocer
// estrella
// amolapaloma


var word:String = #""amolapaloma""#
word = word.lowercased()
var revWord = String(word.reversed())

if word.isEmpty || word.contains(" ") {
    print("No se pueden poner espacios, ni dos palabras o ninguna.")
} else if word == revWord  {
    print("La palabra \(word) es palíndroma.")
} else {
    print("La palabra \(word) no es palíndroma.")
}










