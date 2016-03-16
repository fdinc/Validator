import Foundation.NSCharacterSet

public  let invalidEmailMessage     = "Email must contain an at sign (@) and be between 3 & 254 characters."
private let invalidNameMessage      = " name must be between 1 & 50 characters."
public  let invalidFirstNameMessage = "First" + invalidNameMessage
public  let invalidLastNameMessage  = "Last" + invalidNameMessage

extension String {
    public var isAlphanumeric: Bool {
        return rangeOfString("^[a-zA-Z0-9]+$", options: .RegularExpressionSearch) != nil
    }

    public var isValidEmail: Bool {
        return 3...254 ~= characters.count && characters.contains("@")
    }

    public var isValidName: Bool {
        return 1...50 ~= characters.count
    }

    public var isValidUsername: Bool {
        return 5...15 ~= characters.count && isAlphanumeric
    }

    public func strip() -> String {
        return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    }
}
