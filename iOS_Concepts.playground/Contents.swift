import Foundation

// functions and errors
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

do {
    let string = "12345"
    
    let result = try checkPassword(password: string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("This is an obvious password.")
} catch {
    print("There was an error.")
}
