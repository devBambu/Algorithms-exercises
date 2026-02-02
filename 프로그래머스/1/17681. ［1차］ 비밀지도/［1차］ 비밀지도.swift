// 기존 코드
// - 10진수 정수를 2진수로 나타내는 방법이 없을까 찾으려다 실패하고 문자열을 활용하여 풀이
func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    // 공백1 & 공백2 == 공백 0 && 0
    // 벽1 || 공백2 == 벽 0 || 1
    // 벽 == 1, 공백 == 0
    // 1줄을 2진수로 나타냄 -- 주어진 배열은 해당 2진수의 값
    
    var answer: [String] = []
    
    for i in 0..<n {
        var numA = arr1[i]
        // 2진수 형태로 배열로 변환
        let bitA = Array((0..<n).reduce(into: [Int]()) { arr, n in
                                                 arr.append(numA % 2)
                                                numA = numA / 2
                                                }.reversed())
        
        var numB = arr2[i]
        // 2진수 형태로 배열로 변환
        let bitB = Array((0..<n).reduce(into: [Int]()) { arr, n in
                                                 arr.append(numB % 2)
                                                numB = numB / 2
                                                }.reversed())

        // 같은 위치의 2진수 비트를 비교하여 문자열로 변환
        let ans = zip(bitA, bitB).reduce(into: "") { result, zip in
                                          result = zip.0 == 0 && zip.1 == 0 ? result + " " : result + "#"
            
        }
        answer.append(ans)
    }
    
    return answer
}

// 최종 답안
// - 비트 연산자를 사용하여 연산을 한 후 문자열로 변환
func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
   return (0..<n).map { arr1[$0] | arr2[$0] } // &, |는 비트 연산자!
    .reduce(into: [String]()) { result, num in
                               var num = num
                               let bit = (0..<n)
                               .reduce(into: "") { string, n in
                                                string = num % 2 == 1 ? string + "#" : string + " "
                                                num = num / 2
                                                }.reversed()
                               result.append(String(bit))
                              }
}
