import UIKit


// Write simple closure expressions and understand their syntax.
let calculate: (Int, Int) -> Int = { num1, num2 in
    return num1 + num2
}

let result = calculate(5, 7)
print("Result: \(result)")
