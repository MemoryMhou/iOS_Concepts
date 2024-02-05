import Foundation

// 1. what is swift and what is the advantage over objective c

// Answer
//modern syntax
// type safe ( read more)
// Allows in optionals



// 2. Explain type inference in swift. How does Swift decide the type of a variable when it is not explicitly stated

//Answer

var age1 = 5 // Implicit , you are infering the variable
var age2: Int = 5 // Explicitly stated



// 3. write a basic for loop and print out the value

let numbers = [1, 2, 3, 4, 5, 6]

//for num in numbers {
//    print (num)
//}

// 4. write a basic function for a calculator were you specify the operation and two numbers, add , subtract , multiply and divide

func calculator (a: Int, b: Int , operation: String) -> Int {
    switch operation {
    case "+":
        return a+b
    case "-":
        return a-b
    case "*":
        return a*b
    case "/":
        return a/b
    default:
        return 0
    }
}
print(calculator(a: 30, b: 6, operation: ";"))





// MARK: Create functions with default parameters and variadic parameters.
func displayInfo(name: String = "Guest", age: Int = 25, hobbies: String...) {
    print("Name: \(name)")
    print("Age: \(age)")
    
    if hobbies.isEmpty {
        print("No hobbies specified.")
    } else {
        print("Hobbies:")
        for hobby in hobbies {
            print("- \(hobby)")
        }
    }
}

//Using Default Parameters
displayInfo()

// Providing Some Information
displayInfo(name: "John", age: 30)

// Providing All Information
displayInfo(name: "Alice", age: 28, hobbies: "Reading", "Painting")
