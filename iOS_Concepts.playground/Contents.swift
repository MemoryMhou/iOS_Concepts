import UIKit


// Mark - function to print a square
func Square(sideLength: Int) {
    for _ in 0..<sideLength {
        var row = ""
        for _ in 0..<sideLength {
            row += "* "
        }
        print(row)
    }
}

Square(sideLength: 8)




// Mark - function to print a triangle
func Triangle(height: Int) {
    for i in 1...height {
        var row = ""
        for _ in 1...i {
            row += "* "
        }
        print(row)
    }
}

Triangle(height: 8)

