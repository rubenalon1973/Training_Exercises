import Foundation


/*
 Ejercicio 13:
 Crea una clase llamada CuentaBancaria con propiedades como titular y saldo. Agrega métodos a la clase llamados depositar y retirar que reciban un parámetro cantidad y actualicen el saldo de la cuenta en consecuencia. Luego, crea un objeto de esta clase e inicializa las propiedades con valores y llama a los métodos depositar y retirar para cambiar el saldo de la cuenta. Comprueba y prueba que no pueda retirarse más dinero del que hay en la cuenta.
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
}

let customerOne = BankAccount(holder: "John", balance: 1000)
let increaseInAccount = customerOne.toDeposit(amount: 5000)
let decreaseInAccount = customerOne.remove(amount: 2000)


