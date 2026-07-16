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

    var string = numbers
    
    for num in numberDictionary {
        string = string.replacingOccurrences(of: num.key, with: num.value)
    }

    return Int64(string)!
}