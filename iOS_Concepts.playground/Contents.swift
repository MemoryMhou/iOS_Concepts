import UIKit

func Fibonacci(numSteps: Int)->[Int] {

var sequence = [0 , 1]
if numSteps <= 1{
    return sequence
}

    for _ in 0..<numSteps - 1 {
    let first = sequence[sequence.count - 2]
    let second = sequence . last!
    sequence.append (first + second)
}

return sequence

}

Fibonacci(numSteps: 5)


   
