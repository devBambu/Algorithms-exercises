import Foundation

func solution(_ polynomial:String) -> String {
    let numbers = polynomial.components(separatedBy: "+").map { $0.trimmingCharacters(in: .whitespaces) }
    if numbers.count == 1 { return polynomial }
    
    let result = numbers.reduce(into: (0, 0)) {
        if $1.contains("x") {
            let removeX = $1.replacingOccurrences(of: "x", with: "")
            $0.0 += Int(removeX) ?? 1
        } else {
            $0.1 += Int($1)!
        }
    }
    
    return result.0 == 0 ? "\(result.1)" :
            result.1 == 0 ? "\(result.0)x" :
            result.0 == 1 ? "x + \(result.1)" : "\(result.0)x + \(result.1)"
}