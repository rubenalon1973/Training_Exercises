
import Foundation


/*
 Ejercicio 3:
 Crea una fábrica de chocolate con clases. La clase principal hará
 chocolatinas de n onzas por tableta (n es aleatorio). Las tabletas
 pueden ser de chocolate negro, con leche o blanco. En cada tableta
 además podría venir un billete dorado para visitar la fábrica, pero en
 una probabilidad muy baja.
 */

enum ChocolateType {
    case black
    case withMilk
    case white
}

final class ChocolateBar {
    let ounces: Int
    let type: ChocolateType
    let withGoldenTicket: Bool
    
    init(ounces: Int, type: ChocolateType, withGoldenTicket: Bool) {
        self.ounces = ounces
        self.type = type
        self.withGoldenTicket = withGoldenTicket
    }
}

final class ChocolateFactory {
    func chocolateTablet() -> ChocolateBar {
        let ounces = Int.random(in: 1...20)
        let type = [ChocolateType.black, ChocolateType.withMilk, ChocolateType.white].randomElement()!
        let withGoldenTicket = Int.random(in: 1...10) == 1
        
        return ChocolateBar(ounces: ounces, type: type, withGoldenTicket: withGoldenTicket)
    }
}

let factory = ChocolateFactory()

for _ in 1...10 {
    let tablet = factory.chocolateTablet()
    
    print("Tablet of chocolate \(tablet.type) with \(tablet.ounces) ounces.", tablet.withGoldenTicket ? "With Golden Ticket!" : "")
    
    if tablet.withGoldenTicket {
        print("Congratulations, you’ve been graced with a golden ticket!")
        break
    }
}





































































