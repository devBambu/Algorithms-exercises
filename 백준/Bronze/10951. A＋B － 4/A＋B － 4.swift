import Foundation

while true {
    let input = readLine() ?? ""
    if input == "" { break }
    
    let result = (input.components(separatedBy: .whitespaces).compactMap (Int.init)).reduce(0, +)
    
    print(result)
}