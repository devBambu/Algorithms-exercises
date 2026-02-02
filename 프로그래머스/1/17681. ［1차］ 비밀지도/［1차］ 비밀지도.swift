func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    // 공백1 & 공백2 == 공백 0 && 0
    // 벽1 || 공백2 == 벽 0 || 1
    // 벽 == 1, 공백 == 0
    // 1줄을 2진수로 나타냄 -- 주어진 배열은 해당 2진수의 값
    
    var answer: [String] = []
    
    for i in 0..<n {
        var numA = arr1[i]
        let bitA = Array((0..<n).reduce(into: [Int]()) { arr, n in
                                                 arr.append(numA % 2)
                                                numA = numA / 2
                                                }.reversed())
        
        var numB = arr2[i]
        let bitB = Array((0..<n).reduce(into: [Int]()) { arr, n in
                                                 arr.append(numB % 2)
                                                numB = numB / 2
                                                }.reversed())
        
        let ans = zip(bitA, bitB).reduce(into: "") { result, zip in
                                          result = zip.0 == 0 && zip.1 == 0 ? result + " " : result + "#"
            
        }
        answer.append(ans)
    }
    
    return answer
}