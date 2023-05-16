import Foundation

/*
 Realice un programa que sea capaz de determinar si un número entero positivo cualquiera es un número primo o no.
 */
//Se conoce como número primo a cada número natural que sólo puede dividirse por 1 y por sí mismo. El 1  es primo y el 2 es el único primo par.

let num:Int = 153548601

if num <= 0 {
    print(#""\#(num)" NO es un número primo."#)
} else if  num >= 1 && num <= 3 || num == 5 {
    print(#""\#(num)" es un número primo."#)
} else if num % 2 == 0 || num % 3 == 0 || num % 5 == 0 || num % 7 == 0 || num % 11 == 0 {
    print(#""\#(num)" NO es un número primo."#)
} else {
    print(#""\#(num)" es un número primo."#)
}


//MARK: VS with function:

func isPrime1 (num:Int) -> Bool {
    guard num > 0 else { return false }
    if  num <= 3 || num == 5 {
        return true
    }else if  num % 2 == 0 {
        return false
    }else if  num % 3 == 0 || num % 5 == 0 {
        return false
    } else if  num % 7 == 0 || num % 11 == 0 {
        return false
    }else{
        return true
    }
}
isPrime1(num: 153548601)

