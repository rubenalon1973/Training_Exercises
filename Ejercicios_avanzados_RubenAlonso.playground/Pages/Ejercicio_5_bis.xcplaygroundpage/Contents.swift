import Foundation

//MARK: Vs2 --------------------------------------------------

class Bebe {
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
let bebe = Bebe(ciguena: ciguena)
let bebeObtenido = ciguena.obtenerBebe()

print("¡Ha llegado un bebé!")
print("Sexo: (bebeObtenido.sexo)")
print("Peso: (bebeObtenido.peso) kg")
print("Nombre: (bebeObtenido.nombre)")
