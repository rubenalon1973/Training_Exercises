import Foundation



/*
 Ejercicio 6:
 Enviada a una función un array de números enteros, devuelve otro array
 con los valores consecutivos que se han encontrado en el mismo y cuántas
 veces seguidas aparecen.
 */

func repeatNumbers(nums: [Int]) -> [(value: Int, repeating: Int)] {
    let numbers = nums.sorted()
    var result = [(value: Int, repeating: Int)]()
    var count = 1
    
    for i in 1..<numbers.count {
        if numbers[i] == numbers[i-1] {
            count += 1
        } else {
            result.append((value: numbers[i-1], repeating: count))
            count = 1
        }
    }
    result.append((value: numbers[numbers.count-1], repeating: count))
    
    return result
}

let randomNumbers = [4, 2, 4, 1, 3, 3, 3, 2, 2, 2, 1, 1, 1, 5]
let result = repeatNumbers(nums: randomNumbers)
print(result)
