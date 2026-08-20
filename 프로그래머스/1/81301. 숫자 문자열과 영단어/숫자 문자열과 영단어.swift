import Foundation

func solution(_ s:String) -> Int {
    let numbers: [String: String] = [
        "zero": "0", "one": "1", "two": "2",
        "three": "3", "four": "4", "five": "5",
        "six": "6", "seven": "7", "eight": "8", "nine": "9"
    ]
    
    var resultString = ""
    var temp = ""
    
    for letter in s.map{ String($0) } {
        
        if let num = Int(letter) {
            resultString += letter
        } else {
            temp += letter
        }
        
        if let num = numbers[temp] {
            resultString += num
            temp = ""
        }
    }
    
    return Int(resultString) ?? 0
}