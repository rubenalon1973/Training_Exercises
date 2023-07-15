import Foundation

/*
 Ejercicio 8:
 Crea una función que reciba dos valores de cualquier tipo y los compare usando el operador ==. Usa un genérico para que la función pueda comparar diferentes tipos de datos.
 */

func isEqual<T: Equatable>(x: T, y: T) -> Bool {
    x == y
}
isEqual(x: 2, y: 2)
isEqual(x: "Hola", y: "Hola")
isEqual(x: "Hola", y: "HOla")

//MARK: La función ya existe en el sist.
5 == 5
print(5 == 5)
