import Foundation
import UIKit

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
