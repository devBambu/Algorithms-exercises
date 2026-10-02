import Foundation

func solution(_ X:String, _ Y:String) -> String {
    let max = max(X, Y)
    let min = min(Y, X)
    
    var minDic = [Character: Int]()
    
    for n in min {
       minDic[n, default: 0] += 1 
    }
    
    var numbers = [String]()
    for n in max {
        if let count = minDic[n], count > 0 {
            numbers.append(String(n))
            minDic[n, default: 0] -= 1
        }
    }
    
    numbers.sort(by: >)
    
    if numbers.isEmpty {
        return "-1"
    } else if numbers.allSatisfy { $0 == "0" } {
        return "0"
    } else {
        return numbers.joined()
    }
}