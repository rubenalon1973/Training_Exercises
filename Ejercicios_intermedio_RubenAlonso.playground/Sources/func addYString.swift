import Foundation


public func addYString(_ array: [Int], separator: String = ", ", finalSeparator: String = " y ") -> String {
    return array.enumerated().reduce("") { (result, element) in
        if result.isEmpty {
            return "\(element.element)"
        } else if element.offset == array.count - 1 {
            return "\(result)\(finalSeparator)\(element.element)"
        } else {
            return "\(result)\(separator)\(element.element)"
        }
    }
}




//let array = ["caca","caca","caca"]
//    
//let joinedString = array.dropLast().joined(separator: ", ") + (array.count > 1 ? " and " : "") + array.last!
