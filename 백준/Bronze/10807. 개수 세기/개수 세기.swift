import Foundation

readLine()
let arr = (readLine() ?? "").components(separatedBy: .whitespaces).compactMap(Int.init)

let num = Int(readLine() ?? "")!

var count = 0

for n in arr {
    if n == num { count += 1 }
}

print(count)

//8번 ~ 14번 라인 기존 풀이는 아래였는데, 백준에서 채점 시 컴파일 에러가 나길래 위와 같이 변경하였음.

print(arr.count(where: { $0 == num })
