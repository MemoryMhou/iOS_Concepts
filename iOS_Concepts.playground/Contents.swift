import Foundation

//Implement try-catch blocks and create custom error types.
enum CustomError: Error {
    case divisionByZero
}

func divide(_ a: Int, _ b: Int) throws -> Int {
    guard b != 0 else {
        throw CustomError.divisionByZero
    }
    return a / b
}


do {
    print(try divide(8, 0))
} catch {
    print("Error: \(error)")
}
