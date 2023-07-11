import Foundation

/*
 Ejercicio 5:
 Crea una clase Bebe que tenga una Cigüeña como único constructor, capaz de devolver bebés que pesen entre 3 y 5Kg, que elija el sexo del mismo y proponga un nombre para cada uno.
 */

final class Bebe {
    enum Sex: String, CaseIterable {//lo ponemos dentro pq sólo se usa en esta clase
        case male = "Male"
        case female = "Female"
    }
    
    let edad: Int = Int.random(in: 3...5)
    let sexo: Sex = Sex.allCases.randomElement() ?? .male
    var name: String {
        switch sexo {
        case .male:
            if let name = ["Paco", "Jon", "Peter", "Chewe"].randomElement() {
                return name
            }
        case .female:
            if let name = ["Silvia", "Michy", "Netsuko", "Nara"].randomElement() {
                return name
            }
        }
        return ""
    }
}

let bebe1 = Bebe()

bebe1.name
bebe1.edad
bebe1.sexo.rawValue

//MARK: Gpt --------------------------------------------------

class Bebe2 {
    let ciguena: Ciguena

    init(ciguena: Ciguena) {
        self.ciguena = ciguena
    }
}

class Ciguena {
    func obtenerBebe() -> (sexo: String, peso: Double, nombre: String) {
        let peso = Double.random(in: 3...5)
        let sexo = seleccionarSexo()
        let nombre = proponerNombre(sexo: sexo)

        return (sexo, peso, nombre)
    }

    private func seleccionarSexo() -> String {
        return Bool.random() ? "Niño" : "Niña"
    }

    private func proponerNombre(sexo: String) -> String {
        let nombresNino = ["Juan", "Pedro", "Carlos", "Luis"]
        let nombresNina = ["María", "Ana", "Laura", "Isabella"]

        let nombres = sexo == "Niño" ? nombresNino : nombresNina
        return nombres.randomElement() ?? "Nombre desconocido"
    }
}

let ciguena = Ciguena()
let bebe = Bebe2(ciguena: ciguena)
let bebeObtenido = ciguena.obtenerBebe()

print("¡Ha llegado un bebé!")
print("Sexo: (bebeObtenido.sexo)")
print("Peso: (bebeObtenido.peso) kg")
print("Nombre: (bebeObtenido.nombre)")



