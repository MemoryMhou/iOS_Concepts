import Foundation

// generic function with contraints

func compare<T>(a: T, b: T) where T: Equatable & CustomStringConvertible{
    if a == b {
        print("\(a) is equal to \(b)")
    } else {
        print("\(a) is not equal to \(b)")
    }
}

compare(a: "Hello", b: "World")
compare(a: "chicken", b: "chicken")
