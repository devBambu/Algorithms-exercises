import Foundation

func solution(_ s:String) -> Int {
    let numbers: [String: String] = [
        "zero": "0", "one": "1", "two": "2",
        "three": "3", "four": "4", "five": "5",
        "six": "6", "seven": "7", "eight": "8", "nine": "9"
    ]
    
    var resultString = s
    
    for num in numbers {
        resultString = resultString.replacingOccurrences(of: num.key, with: num.value)
    }
    
    return Int(resultString) ?? 0
}