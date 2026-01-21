import Foundation

let x = (readLine() ?? "").components(separatedBy: .whitespaces).compactMap(Int.init)[1]

let arr = (readLine() ?? "").components(separatedBy: .whitespaces).compactMap(Int.init)

arr.filter{ $0 < x }.forEach {
    print($0, terminator: " ")
}