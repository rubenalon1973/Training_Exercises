import Foundation


/*
 Ejercicio 7:
 Enviada una frase a una función, descomponga esta en sus distintas
 palabras. Una vez hecho, devuelva un diccionario con las palabras como
 clave y en el valor, el número de veces que aparece cada palabra en la
 frase.
 */


//TODO: A FALTA DE + CARACTERES


let phrase = "Me encontré con un niño feo y luego vi un niño guapo y luego un niño también feo en la calle"

func breakDownPhrase(words: String) -> [String:Int] {
    //ordenamos el dic
    let array = words.split(separator: " ").sorted()
    //para ir llenando
    var resultDic = [String:Int]()
    //inicializamos
    var count = 1
    for word in array {
        if resultDic.keys.contains(String(word)) {
            count += 1
            resultDic[String(word)] = count
        } else {
            count = 1
            resultDic[String(word)] = count
        }
    }
    return resultDic
}
breakDownPhrase(words: phrase)
    












































