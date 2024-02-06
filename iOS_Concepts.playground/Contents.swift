import Foundation

//complex function incorporating both concepts.
func calculateResult(numbers: [Int], operation: (Int) throws -> Int) -> [Int] {
    var results = [Int]()
    
    for num in numbers {
        do {
            results.append(try operation(num))
        } catch {
            print("Error: \(error)")
        }
    }
    
    return results
}

let squaredNumbers = calculateResult(numbers: [2, 5, 8, 10]) { $0 * $0 }

print(squaredNumbers)

