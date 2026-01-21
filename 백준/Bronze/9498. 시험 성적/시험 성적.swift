import Foundation

let input = readLine() ?? ""
let arr = input.components(separatedBy: .whitespaces).map { Int($0) }
let a = arr[0]!

switch a {
case 90...100:
    print("A")
case 80...89:
    print("B")
case 70...79:
    print("C")
case 60...69:
    print("D")
default:
    print("F")
}