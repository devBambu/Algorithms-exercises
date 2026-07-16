import Foundation

func solution(_ numbers:String) -> Int64 {
    let numberDictionary: [String: String] = [
        "zero": "0",
        "one": "1",
        "two": "2",
        "three": "3",
        "four": "4",
        "five": "5",
        "six": "6",
        "seven": "7",
        "eight": "8",
        "nine": "9"
    ]
    
    var resultString = ""
    var target = ""
    
    for s in numbers {
        target += String(s)
        
        if let numString = numberDictionary[target] {
            resultString += numString
            target = ""
        }
    }

    return Int64(resultString)!
}