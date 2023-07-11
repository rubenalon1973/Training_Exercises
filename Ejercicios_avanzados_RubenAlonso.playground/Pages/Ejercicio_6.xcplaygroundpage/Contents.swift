//: [Previous](@previous)

import Foundation

/*
 Ejercicio 6:
 Tenemos dos structs que son Hombre y Mujer. Ambos aportan rasgos genéticos para el color de ojos, color del pelo y un nivel de 0 a 10 de belleza e inteligencia. Genera 10 ejemplos de cada uno y crea un operador capaz de generar bebés que elijan los rasgos en función de los que aporta cada uno de los progenitores. Los rasgos fijos se elegirán aleatoriamente y aquellos por nivel serán la mitad de la suma de ambos.
 */

enum ColorOjos: CaseIterable {
    case verde
    case azul
    case marron
    case negro
}

enum ColorPelo: CaseIterable {
    case castano
    case moreno
    case rubio
    case pelirrojo
    
}
struct Hombre {
    let colorOjos = ColorOjos.allCases.randomElement()
    let colorPelo = ColorPelo.allCases.randomElement()
    let belleza = Int.random(in: 0...10)
    let inteligencia = Int.random(in: 0...10)
}

struct Mujer {
    let colorOjos = ColorOjos.allCases.randomElement()
    let colorPelo = ColorPelo.allCases.randomElement()
    let belleza = Int.random(in: 0...10)
    let inteligencia = Int.random(in: 0...10)
}

struct Baby {
    let colorOjos: ColorOjos
    let colorPelo: ColorPelo
    let belleza: Int
    let inteligencia: Int
}

var hombres = [Hombre]()
var mujeres = [Mujer]()

for _ in 0...10 {
    hombres.append(Hombre())
    mujeres.append(Mujer())
}

func fabricaDeBebes(hombre: Hombre, mujer: Mujer) -> Baby {
    let inteligenciaBebe = (hombre.inteligencia + mujer.inteligencia) / 2
    let bellezaBebe =  (hombre.belleza + mujer.belleza) / 2
    
    let babyColorEyes = Bool.random() ? hombre.colorOjos : mujer.colorOjos
    let babyColorHair = Bool.random() ? hombre.colorPelo : mujer.colorPelo
    
    return Baby(colorOjos: babyColorEyes ?? .azul,
                colorPelo: babyColorHair ?? .pelirrojo,
                belleza: bellezaBebe,
                inteligencia: inteligenciaBebe)
}

var bebes = [Baby]()

for _ in 1...10 {
    if let hombre = hombres.randomElement(),
       let mujer = mujeres.randomElement() {
        let bebe = fabricaDeBebes(hombre: hombre, mujer: mujer)
        
        bebes.append(bebe)
    }
}

bebes.forEach {
    print("El bebé ha salido con ojos: \($0.colorOjos), con color de pelo: \($0.colorPelo) con inteligencia \($0.inteligencia) y con belleza \($0.belleza) ")
}
