import UIKit

// Mark-  Fibonacci Sequence Using Recursion


func FibonacciRecursion(numbSteps: Int, first: Int = 0, second: Int = 1)-> [Int]{
   
    if numbSteps == 0 {
          return []
      } else if numbSteps == 1 {
          return [first, second]
      }
      
    return [first] + FibonacciRecursion(numbSteps: numbSteps - 1, first: second, second: first + second)
}

print(FibonacciRecursion(numbSteps: 6))

