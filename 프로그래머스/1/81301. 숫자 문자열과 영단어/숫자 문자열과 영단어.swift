import Foundation

func solution(_ s:String) -> Int {
    let numbers = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    var resultString = s
    for num in numbers.enumerated() {
        resultString = resultString.replacingOccurrences(of: num.element, with: String(num.offset))
    }
    
    return Int(resultString) ?? 0
}