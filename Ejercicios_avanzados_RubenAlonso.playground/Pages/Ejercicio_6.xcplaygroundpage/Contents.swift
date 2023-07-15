//: [Previous](@previous)

import Foundation

/*
 Ejercicio 6:
 Tenemos dos structs que son Hombre y Mujer. Ambos aportan rasgos genéticos para el color de ojos, color del pelo y un nivel de 0 a 10 de belleza e inteligencia. Genera 10 ejemplos de cada uno y crea un operador capaz de generar bebés que elijan los rasgos en función de los que aporta cada uno de los progenitores. Los rasgos fijos se elegirán aleatoriamente y aquellos por nivel serán la mitad de la suma de ambos.
 */

enum ColorEyes: CaseIterable {
    case green
    case blue
    case brown
    case black
}

enum HairColor: CaseIterable {
    case darkBrown
    case dark
    case blonde
    case redhead
    
}
struct Man {
    let colorEyes = ColorEyes.allCases.randomElement()
    let hairColor = HairColor.allCases.randomElement()
    let beauty = Int.random(in: 0...10)
    let intelligence = Int.random(in: 0...10)
}

struct Woman {
    let colorEyes = ColorEyes.allCases.randomElement()
    let hairColor = HairColor.allCases.randomElement()
    let beauty = Int.random(in: 0...10)
    let intelligence = Int.random(in: 0...10)
}

struct Baby {
    let colorEyes: ColorEyes
    let hairColor: HairColor
    let beauty: Int
    let intelligence: Int
}

var men = [Man]()
var women = [Woman]()

for _ in 0...10 {
    men.append(Man())
    women.append(Woman())
}

func babyFactory(man: Man, woman: Woman) -> Baby {
    let intelligenceBaby = (man.intelligence + woman.intelligence) / 2
    let beautyBaby =  (man.beauty + woman.beauty) / 2
    
    let babyColorEyes = Bool.random() ? man.colorEyes : woman.colorEyes
    let babyHairColor = Bool.random() ? man.hairColor : woman.hairColor
    
    return Baby(colorEyes: babyColorEyes ?? .blue,
                hairColor: babyHairColor ?? .redhead,
                beauty: beautyBaby,
                intelligence: intelligenceBaby)
}

var babies = [Baby]()

for _ in 1...10 {
    if let man = men.randomElement(),
       let woman = women.randomElement() {
        let baby = babyFactory(man: man, woman: woman)
        
        babies.append(baby)
    }
}

babies.forEach {
    print("The baby came out with eyes: \($0.colorEyes), with hair color: \($0.hairColor) with intelligence \($0.intelligence) and with beauty \($0.beauty) ")
}
