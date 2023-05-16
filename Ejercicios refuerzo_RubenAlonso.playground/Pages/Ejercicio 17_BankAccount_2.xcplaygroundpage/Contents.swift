import Foundation


/*
 Ejercicio 17
 Agrega un método a la clase CuentaBancaria del ejercicio 13 llamado info que muestre el titular de la cuenta y el saldo actual en la consola. Luego, crea un objeto de la clase CuentaBancaria e inicializa las propiedades con valores y llama al método info para mostrar la información de la cuenta en la consola. Después, llama al método depositar para agregar una cantidad a la cuenta y llama nuevamente al método info para mostrar el saldo actualizado en la consola.
 */

final class BankAccount {
    let holder: String
    var balance: Int
    
    
    init(holder: String, balance: Int) {
        self.balance = balance
        self.holder = holder
    }
    func toDeposit(amount: Int) -> Int {
        balance += amount
        return balance
    }
    func remove(amount: Int) -> String {
        guard balance >= amount else {
            return "Ya no puedes gastar más"
        }
        balance -= amount
        return "Ten cuidado que ya te queda poco"
    }
    func info() {
        print("Eres \(holder) y tienes este saldo en cuenta: \(balance)")
    }
}

let customerOne = BankAccount(holder: "John", balance: 1000)
let increaseInAccount = customerOne.toDeposit(amount: 5000)
let decreaseInAccount = customerOne.remove(amount: 2000)
let customerTwo = BankAccount(holder: "Pepe", balance: 10000)
customerTwo.info()
customerTwo.toDeposit(amount: 200)
customerTwo.info()
