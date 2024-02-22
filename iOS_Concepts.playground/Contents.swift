import UIKit

// Mark-  Fibonacci Sequence Using Recursion

func FibonacciRecursion(numbSteps: Int, first: Int, second: Int)-> [Int]{
    
    if numbSteps == 0{
        return[]
    }
    
    return [first + second] + FibonacciRecursion(numbSteps: numbSteps - 1, first: second, second: first + second)
}

[0 , 1] + FibonacciRecursion(numbSteps: 4, first: 0, second: 1)
