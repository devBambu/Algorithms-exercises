import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let threshold = calculateToDays(of: today)
    var termsDic = [String: Int]() // [약관 종류: 일 수]
    
    for term in terms {
        let split = term.components(separatedBy: .whitespaces)
        termsDic[split.first!] = Int(split.last!)! * 28
    }

    return privacies.enumerated().reduce([Int]()) { result, element in
        let (num, privacy) = element
        let split = privacy.components(separatedBy: .whitespaces)
        
        guard let date = split.first, let key = split.last,
            let termDays = termsDic[key] else { return result }
        
        let retentionDays = calculateToDays(of: date) + termDays
        return retentionDays <= threshold ? result + [num + 1] : result
    }
    
    func calculateToDays(of date: String) -> Int {
        let components = date.components(separatedBy: ".").map { Int($0)! }
        return (components[0] * 12 + components[1]) * 28 + components[2]
    }
}