
import Foundation

/*
 Ejercicio 2:
 Realiza una función que analice un texto y devuelva el número de palabras del mismo, su longitud completa, y qué longitud tiene cada palabra que aparezca en dicho texto en un listado.
 */


//MARK: VERSIÓN ESTRUCTURADA

func analyzeText(text: String) {
    let words = text.split(separator: " ")
    let numWords = words.count
    print("Número de palabras: \(numWords)")
    let textLength = text.count
    print("Longitud completa: \(textLength)")
    var wordLengths = [Int]()
    
    for word in words {
        wordLengths.append(word.count)
    }
    print("Longitud de cada palabra:")
    
    for length in wordLengths {
        print(length)
    }
}
let textOne = "Este ejercicio es el segundo del total de ejercicios."
analyzeText(text: textOne)



//MARK: VERSIÓN FUNCIONAL

func analyzeText2(text: String) -> (wordCount: Int, totalLength: Int, wordLengths: [Int]) {
    let words2 = text.split(separator: " ")
    let wordCount2 = words2.count
    print("Número de palabras: \(wordCount2)")
    let totalLength2 = words2.reduce(0) { $0 + $1.count }
    print("Longitud total: \(totalLength2)")
    let wordLengths2 = words2.map { $0.count }
    print("Longitud de cada palabra: \(wordLengths2)")
    return (wordCount2, totalLength2, wordLengths2)
}

analyzeText2(text: textOne)




























































