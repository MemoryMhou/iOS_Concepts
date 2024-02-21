import Foundation

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
