import Foundation

/*
 Ejercicio 1:
 ¿Qué distintos tipos de datos existen en Swift y cuál es su función? Crea dos datos prototipo de cada tipo de dato en Swift para ejemplificar su función principal.
 */



/*
Dependiendo del sist. serán de estos bits y tendrán esa capacidad:
 -> Enteros con signo
 Int8  : 8  bits desde -2^7  hasta 2^7-1  = -128 a 127
 Int16 : 16 bits desde -2^15 hasta 2^15-1 = -32.768 a 32.767
 Int32 : 32 bits desde -2^31 hasta 2^31-1 = 2.147.483.648 a 2.147.483.647
 Int64 : 64 bits desde -2^63 hasta 2^63-1 = -9.223.372.036.854.775.808 a 9.223.372.036.854.775.807
 
 -> Enteros sin signo
 UInt8  : 8  bits 0 a 2^8-1  = 255
 UInt16 : 16 bits 0 a 2^16-1 = 65.535
 UInt32 : 32 bits 0 a 2^32-1 = 4.294.967.295
 UInt64 : 64 bits 0 a 2^64-1 = 18.446.744.073.709.551.615
*/

let dato1:Int  = -2
let dato2:Int  = 8
let dato3:UInt = 5
let dato4:UInt = 0


// Bool: Representa valores booleanos true y false.
let persontalk:Bool = true
let dogtalk:Bool = false

// Float y Double: Representan números de punto flotante con precisión simple y doble, respectivamente.
let height:Double = 1.75
let weight:Float  = 73.5

// String: Representa una cadena de caracteres.
let cadena:String = "This is a reinforcement exercise."

// Character: Representa un único carácter.
let character:Character = "&"

// Array: Representa una colección ordenada de elementos del mismo tipo.
let array:Array = [1,2,3,4,5]

// Set: Representa una colección no ordenada de elementos únicos del mismo tipo.
let setNumber:Set<Int> = [3,7,2,5,0,9]
let setCharacter:Set<Character> = ["a", "b", "z", "m"]

// Dictionary: Representa una colección de pares clave-valor.
let dictionary:Dictionary = [ "language":7, "maths":8, "social":7.5 ]

// Tuple: Representa una agrupación de valores del mismo o diferentes tipos.
let tuple = (5, "house", 3.2, "car")

// Optional: Representa un valor opcional que puede ser nil o contener un valor de un tipo específico.
let optionalNumber:Int? = nil
let optionalWord:String? = "table"

// Struct: Permite definir tipos de datos personalizados que contienen propiedades y métodos.
struct Personage {
    var name:String
    var life:Int
    }
let enemy  = Personage(name: "Hulk", life: 5)
let wizard = Personage(name: "Merlin", life: 8)

// Class: Permite definir tipos de datos personalizados que contienen propiedades, métodos y herencia.
class Person {
    var name: String

    init(name: String) {
        self.name = name
    }

    func sayHello() {
        print("Hello, my name is \(name).")
    }
}
let person1 = Person(name: "Paco")
let hello: () = person1.sayHello()

// Enum: Permite definir tipos de datos personalizados que representan un conjunto de valores posibles.

enum foodMoment {
    case breakfast
    case morningSnack
    case lunch
    case snack
    case dinner
}
let nowFood = foodMoment.lunch



