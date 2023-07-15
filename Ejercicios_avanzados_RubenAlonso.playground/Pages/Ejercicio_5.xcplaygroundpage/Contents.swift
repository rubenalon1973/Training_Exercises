import Foundation

/*
 Ejercicio 5:
 Crea una clase Bebe que tenga una Cigüeña como único constructor, capaz de devolver bebés que pesen entre 3 y 5Kg, que elija el sexo del mismo y proponga un nombre para cada uno.
 */

final class Baby {
    enum Sex: String, CaseIterable {//lo ponemos dentro pq sólo se usa en esta clase
        case male = "Male"
        case female = "Female"
    }
    
    let age: Int = Int.random(in: 3...5)
    let sex: Sex = Sex.allCases.randomElement() ?? .male
    var name: String {
        switch sex {
        case .male:
            if let name = ["Peter", "Michael", "Marcus", "Richy"].randomElement() {
                return name
            }
        case .female:
            if let name = ["Mary", "Sandra ", "Shakira", "Celia"].randomElement() {
                return name
            }
        }
        return ""
    }
}

let baby1 = Baby()

baby1.name
baby1.age
baby1.sex.rawValue




