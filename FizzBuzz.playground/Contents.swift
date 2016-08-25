import Foundation

extension Sequence where Iterator.Element == IntegerLiteralType {
    func fizzBuzzed() -> Array<(String, Iterator.Element)> {
        return map {
            var string = ""
            if $0 % 3 == 0 {
                string += "fizz"
            }
            if $0 % 5 == 0 {
                string += "buzz"
            }
            
            return (string, $0)
        }
    }
}

(1...100).fizzBuzzed()
    .filter { !$0.0.isEmpty }
    .forEach {
        print("\($0.1): \"\($0.0.uppercased())!\"")
}

