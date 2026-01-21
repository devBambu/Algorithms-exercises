import Foundation

let nm = (readLine() ?? "").components(separatedBy: .whitespaces).compactMap(Int.init)

let n = nm[0]
let m = nm[1]

var arrA: [[Int]] = []
var arrB: [[Int]] = []

for row in 0..<(n * 2) {
    if row < n {
        arrA.append((readLine() ?? "").components(separatedBy: .whitespaces).compactMap(Int.init))
    } else {
        arrB.append((readLine() ?? "").components(separatedBy: .whitespaces).compactMap(Int.init))
    }
}

for a in arrA.enumerated() {
    var row: [Int] = []
    
    for i in 0..<m {
        row.append(a.element[i] + arrB[a.offset][i])
    }
    print(row.map(String.init).joined(separator: " "))
}
