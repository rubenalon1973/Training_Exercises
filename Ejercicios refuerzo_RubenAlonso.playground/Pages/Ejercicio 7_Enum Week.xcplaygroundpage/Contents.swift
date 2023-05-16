import Foundation

/*
 Ejercicio 7:
 Crea una enumeración con los días de la semana y crea un flujo de tipo switch que de un mensaje que defina cada día de la semana o si estamos en fin de semana.
 */

enum WeekDay {
    case workDay(String)
    case freeDay(String)
}

let monday: WeekDay = .workDay("Today is monday and it’s working day.")
let tuesday: WeekDay = .workDay("Today is tuesday and it’s working day.")
let wednesday: WeekDay = .workDay("Today is wednesday and it’s working day.")
let thursday: WeekDay = .workDay("Today isthursday and it’s working day.")
let friday: WeekDay = .workDay("Today isfriday and it’s working day.")
let saturday: WeekDay = .freeDay("Today is saturday and it’s weekend.")
let sunday: WeekDay = .freeDay("Today is sunday and it’s weekend.")

let today: WeekDay = saturday


switch today {
case .workDay(let message):
    print(message)
case .freeDay(let message):
    print(message)
}


