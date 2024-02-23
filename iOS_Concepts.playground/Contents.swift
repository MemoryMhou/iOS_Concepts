import UIKit


func GeneratePascal(_ numbRows: Int)-> [[Int]] {
    if numbRows == 0 {
        return []
    }
    var results = [[1]]
    for i in 1..<numbRows {
        let previousRow = results[i-1]
        var currentRow = [1]
        for j in 1..<i {
            let firstNum = previousRow[j-1]
            let secondNum = previousRow[j]
            currentRow.append(firstNum + secondNum)
        }
        currentRow.append(1)
        results.append(currentRow)
    }
    return results
    
    
}
func printPascalTriangle(_ numRows: Int) {
    let triangle = GeneratePascal(numRows)
    for row in triangle {
        let rowString = row.map { String($0) }.joined(separator: " ")
        print(rowString)
    }
}

printPascalTriangle(6)
