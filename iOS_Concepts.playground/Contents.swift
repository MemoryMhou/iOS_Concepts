import UIKit
import Foundation


//Mark -  Model
class StandardCalculatorModel {
    func calculate(a: Int, b: Int, operation: String) -> Int {
        switch operation {
        case "+":
            return a + b
        case "-":
            return a - b
        case "*":
            return a * b
        case "/":
            if b != 0 {
                return a / b
            } else {
                return Int.min
            }
        default:
            return 0
        }
    }
}


//Mark - View
class StandardCalculatorView {
    func displayResult(result: Int) {
        print("Result: \(result)")
    }
    
    func displayError() {
        print("math error")
    }
}


//Mark - Controller

class StandardCalculatorController {
    var model = StandardCalculatorModel()
    var view = StandardCalculatorView()
    
    func calculate(a: Int, b: Int, operation: String) {
        if operation == "/" && b == 0 {
            view.displayError()
        } else {
            let result = model.calculate(a: a, b: b, operation: operation)
            view.displayResult(result: result)
        }
    }
}
