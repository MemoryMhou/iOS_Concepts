import Foundation


//Utilize closures with functions as arguments and return types.
func calculate(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

let resultSubtract = calculate(a: 8, b: 3) { $0 - $1 }
print(resultSubtract)

