import Foundation

func solution(_ my_string:String) -> Int {
    let strings = my_string.components(separatedBy: .whitespaces)
    var op = "+"
    
    return strings.reduce(into: 0) { result, target in
        guard let num = Int(target) else {
            op = target
            return
        }
                                    
        result = op == "+" ? result + num : result - num
    }
}