
import Foundation

/*
 Ejercicio 22
 Agrega un método a la clase CuentaBancaria de los ejercicios 13 y 17 llamado transferir que reciba dos parámetros (otraCuenta y cantidad) y transfiera la cantidad indicada de la cuenta actual a la cuenta indicada en el parámetro otraCuenta. Controla que haya saldo suficiente para hacer esta operación. Luego, crea dos objetos de la clase CuentaBancaria e inicializa las propiedades con valores y llama al método transferir para transferir una cantidad de una cuenta a otra.
 */

final class BankAccount {
    let holder: String
    var balance: Int
        
    init(holder: String, balance: Int) {
        self.balance = balance
        self.holder = holder
    }
    func toDeposit(amount: Int) {
        balance += amount
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
//    Versión con llamada a las funciones anteriores
//    func transfer(anotherAccount: BankAccount, actualAccount: BankAccount, amount: Int) -> String {
//        guard amount >= 0 else { return "No hay saldo suficiente para hacer la operación" }
//        actualAccount.remove(amount: amount)
//        anotherAccount.toDeposit(amount: amount)
//        return "Se ha efectuado una transferencia de \(amount)€ desde la cuenta de \(actualAccount.holder) a la cuenta de \(anotherAccount.holder)"
//    }
    
//    Versión sin llamada a las funciones
      func trasnfer(anotherAccount: BankAccount, amount: Int) {
          guard amount > 0 && balance >= amount  else {
              print("No hay saldo suficiente para hacer la operación")
              return }
          balance -= amount
          anotherAccount.balance += amount
    }
}
let accountOne = BankAccount(holder: "Pepe", balance: 5000)
let accountTwo = BankAccount(holder: "Maria", balance: 2000)
accountOne.balance
accountTwo.balance
//accountOne.transfer(anotherAccount: accountTwo, actualAccount: accountOne, amount: 200)
accountOne.trasnfer(anotherAccount: accountTwo, amount: 300)
accountOne.balance
accountTwo.balance
