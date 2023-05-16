import Foundation


/*
 Ejercicio 5:
 Vamos a crear la estructura de un videojuego.
 - Personaje tiene un valor de vida y un nombre. Es capaz de morir cuando
 se queda sin vida y de saludar diciendo su nombre.
 - Héroe hereda de Personaje. Tiene valor de fuerza de ataque y es capaz
 de atacar a un Enemigo que recibe como parámetro, reduciendo su vida
 en un ataque igual a un número entre 0 y la mitad de su fuerza.
 - Mago hereda de Héroe. Tiene un valor de magia que suma la mitad de su
 valor al daño ocasionado en un ataque y reduce en 1/4 el daño
 infligido cuando es atacado por un Enemigo.
 - Guerrera hereda de Héroe. Tiene una espada que en su inicialización
 tendrá un valor de ataque que será un número aleatorio de 0 a la mitad

 de su fuerza. Dicha espada inflige un daño extra a los enemigos igual
 al total de dicha fuerza.
 - Enemigo hereda de Personaje. Tiene valor de fuerza de ataque y puede
 tener tres tipos de armas, la cual se elegirá en su inicialización.
 Puede atacar a un héroe, recibido como parámetro. El arma Hacha hará
 un daño de 10 sobre el daño del ataque, el arma Sable lo hará de 5 y
 el arma Cadena lo hará de 2. También puede ser que el Enemigo se cree
 sin arma y entonces no aumente su fuerza en el ataque.
 Crear todos los inicializadores, métodos y propiedades necesarios, así
 como la capacidad de atacar y morir de cada personaje susceptible de
 ello, además del resto de comportamientos indicados. Usa enumeraciones
 donde sea más práctico para representar datos.
 */

class Personaje {
    enum Arma {
        case hacha
        case sable
        case cadena
    }
    var nombre: String
    var muerto: Bool = false
    var vida: Int {
        didSet {
            if vida < 0 {
                vida = 0
            }
        }
        willSet {
            if newValue <= 0 {
                muerto = true
            }
        }
    }
    
    var saluda: String {
        "Hola, soy \(nombre)"
    }
    
    init(nombre: String, vida: Int) {
        self.nombre = nombre
        self.vida = vida
    }
}

class Heroe: Personaje {
    var ataque: Int
    
    init(nombre: String, vida: Int, ataque: Int) {
        self.ataque = ataque
        super.init(nombre: nombre, vida: vida)
    }
    
    func atacar(enemigo: Enemigo) {
        guard !muerto else { return }
        enemigo.vida -= Int.random(in: 0...ataque / 2)
    }
}

final class Mago: Heroe {
    var magia: Int
    
    init(nombre: String, vida: Int, ataque: Int, magia: Int) {
        self.magia = magia
        super.init(nombre: nombre, vida: vida, ataque: ataque)
    }
    
    override func atacar(enemigo: Enemigo) {
        super.atacar(enemigo: enemigo)
        magia += magia / 2
    }
}

final class Guerrera: Heroe {
    enum Arma {
        case espada(fuerza: Int)
    }
    let arma: Arma
    
    override init(nombre: String, vida: Int, ataque: Int) {
        arma = .espada(fuerza: Int.random(in: 0...ataque / 2))
        super.init(nombre: nombre, vida: vida, ataque: ataque)
    }
    
    override func atacar(enemigo: Enemigo) {
        super.atacar(enemigo: enemigo)
        if case let .espada(fuerza) = arma {
            enemigo.vida -= fuerza
        }
    }
}

final class Enemigo: Personaje {
    var ataque: Int
    let arma: Arma
    
    init(nombre: String, vida: Int, ataque: Int, arma: Arma) {
        self.ataque = ataque
        self.arma = arma
        super.init(nombre: nombre, vida: vida)
    }
    
    func atacar(heroe: Heroe) {
        guard !muerto else { return }
        
        switch arma {
        case .hacha:
            ataque += 10
        case .sable:
            ataque += 5
        case .cadena:
            ataque += 2
        }
        
        if heroe is Mago {
            heroe.vida -= ataque/4
        } else {
            heroe.vida -= ataque
        }
    }
}
let heroe = Heroe(nombre: "Héroe", vida: 250, ataque: 150)
let mago = Mago(nombre: "Mago", vida: 200, ataque: 100, magia: 150)
let guerrera = Guerrera(nombre: "Guerrera", vida: 200, ataque: 100)
let enemigo = Enemigo(nombre: "Enemigo", vida: 200, ataque: 25, arma: .hacha)

heroe.atacar(enemigo: enemigo)
enemigo.vida

mago.atacar(enemigo: enemigo)
enemigo.vida

enemigo.atacar(heroe: mago)
mago.vida

guerrera.atacar(enemigo: enemigo)
enemigo.vida

enemigo.atacar(heroe: guerrera)
guerrera.vida

mago.atacar(enemigo: enemigo)
enemigo.vida

enemigo.atacar(heroe: mago)
mago.vida

guerrera.atacar(enemigo: enemigo)
enemigo.vida

enemigo.atacar(heroe: guerrera)
guerrera.vida

mago.atacar(enemigo: enemigo)
enemigo.vida





enemigo.muerto
mago.muerto
guerrera.muerto
