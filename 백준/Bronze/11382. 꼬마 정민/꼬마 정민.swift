import Foundation

let input = readLine() ?? ""
let arr = input.components(separatedBy: .whitespaces)
let a = Int(arr[0])!
let b = Int(arr[1])!
let c = Int(arr[2])!
print(a + b + c)
