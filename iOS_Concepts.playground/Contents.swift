import Foundation

//Use throws and rethrows in functions.
enum MathError: Error {
    case negativeNumber
}

func square(_ number: Int) throws -> Int {
    guard number >= 0 else {
        throw MathError.negativeNumber
    }
    return number * number
}

func processNumbers( numbers: [Int], using closure: (Int) throws -> Int) rethrows {
    try numbers.forEach { num in
        try print(closure(num))
    }
}

do {
    try processNumbers(numbers: [1, 4, 2, -9]) { num in
        try square(num)
    }
} catch {
    print("Error: \(error)")
}

