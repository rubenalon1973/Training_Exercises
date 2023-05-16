import Foundation

//public func isPrime (_ num:Int) -> Bool {
//    if num > 0 && num <= 3 || num == 5 {
//        return true
//    }else if  num % 2 == 0 {
//        return false
//    }else if  num % 3 == 0 || num % 5 == 0 {
//        return false
//    } else if  num % 7 == 0 || num % 11 == 0 {
//        return false
//    }else{
//        return true
//        }
//}

//versión mejorada de mi func isPrime
public func isPrime(_ numero: Int) -> Bool {
    if numero <= 1 {
        return false
    }
    for i in 2..<numero {
        if numero % i == 0 {
            return false
        }
    }
    return true
}
