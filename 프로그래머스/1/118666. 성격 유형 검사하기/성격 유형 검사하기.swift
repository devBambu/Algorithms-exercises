import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    let types: [[Character]] = [["R", "T"], ["C", "F"], ["J", "M"], ["A", "N"]]
    var scores = [Character: Int]()
    
    for i in 0..<survey.count {
        let n = survey[i].first!
        let p = survey[i].last!
        
        if choices[i] > 4 {
            scores[p, default: 0] += choices[i] - 4
        } else if choices[i] < 4 {
            scores[n, default: 0] += 4 - choices[i]
        }
    }
    
    return types.reduce("") { result, type in
        let lhs = scores[type[0]] ?? 0
        let rhs = scores[type[1]] ?? 0
                      
        let r = lhs > rhs || lhs == rhs ? type[0] : type[1]
        return result + String(r)
    }
}