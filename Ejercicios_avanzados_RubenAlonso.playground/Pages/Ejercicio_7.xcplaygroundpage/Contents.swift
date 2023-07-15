import Foundation

/*
 Ejercicio 7:
 Crea una función que convierta números enteros en su versión en números romanos, partiendo de sus equivalencias:
 1 -> I, V -> 5, X -> 10, L -> 50, C -> 100, D -> 500, M -> 1000
 Recuerda que los números antes a la mitad, como el 4, se representan con una resta: IV (5V - 1I); CM (1000M - 100C).
 */

func intToRomNum(num: Int) -> String {
    let equivalences: [(roman: String, value: Int)] = [
        ("M", 1000),
        ("CM", 900),
        ("D", 500),
        ("CD", 400),
        ("C", 100),
        ("XC", 90),
        ("L", 50),
        ("XL", 40),
        ("X", 10),
        ("IX", 9),
        ("V", 5),
        ("IV", 4),
        ("I", 1)
    ]
    
    var result = ""
    var number = num
    
    equivalences.forEach { equivalence in
        guard number > 0, number < 4000 else { return }
        
        while number >= equivalence.value {
            result += equivalence.roman
            number -= equivalence.value
            }
    }
 
    return result
}

print(intToRomNum(num: 3)) // III
print(intToRomNum(num: 9)) // IX
print(intToRomNum(num: 58)) // LVIII
print(intToRomNum(num: 1994)) // MCMXCIV
print(intToRomNum(num: 3999)) // MMMCMXCIX
print(intToRomNum(num: 4000)) // MMMCMXCIX
//The largest Roman numeral is 3999
