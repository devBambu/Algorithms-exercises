import Foundation

func solution(_ quiz:[String]) -> [String] {
    return quiz.reduce(into: [String]()) {
        let comp = $1.components(separatedBy: .whitespaces)
        
        var result = 0
        var operation = "+"
        
        for target in comp {
            if target == "=" {
                break
            } else if target == "+" || target == "-" {
                operation = target
            } else {
                let num = target.contains("-") ? Int(target.replacingOccurrences(of: "-", with: ""))! * -1 : Int(target)!
                result = operation == "+" ? result + num : result - num
            }
        }
        
        comp.last! == "\(result)" ? $0.append("O") : $0.append("X")
    }
}