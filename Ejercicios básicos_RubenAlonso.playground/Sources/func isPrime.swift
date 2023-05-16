
import Foundation

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
