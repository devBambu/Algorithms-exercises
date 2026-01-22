import Foundation

let input = readLine() ?? ""

print(input.reduce(into: "") { 
    $0 += ($1.isUppercase ? $1.lowercased() : $1.uppercased())
})
