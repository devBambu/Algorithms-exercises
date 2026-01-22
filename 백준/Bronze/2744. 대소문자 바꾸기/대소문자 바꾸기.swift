// 최종 제출 코드
import Foundation

let input = readLine() ?? ""

print(input.reduce(into: "") { 
    $0 += ($1.isUppercase ? $1.lowercased() : $1.uppercased())
})


// 기존 코드
// - reduce를 활용해서 더 축약할 수 있을 것 같아 수정하였음
var result = ""
for c in input {
    result = c.isUppercase ? result + c.lowercased() : result + c.uppercased()
}

print(result)
