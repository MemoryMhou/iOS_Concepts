import Foundation

// generic function with numeric type constraint
func sum<T: Numeric>(a: T, b: T) -> T {
    return a + b
}
let result = sum(a: 8, b: 3)
print(result)

print(sum(a: 2, b: 5))



