import Foundation

let input = readLine() ?? ""
let arr = input.components(separatedBy: .whitespaces).map { Int($0) }
let a = arr[0]!
let b = arr[1]!

if a > b {
    print(">")
} else if a < b {
    print("<")
} else {
    print("==")
}
