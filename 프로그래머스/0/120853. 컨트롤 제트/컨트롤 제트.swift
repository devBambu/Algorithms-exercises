import Foundation

func solution(_ s:String) -> Int {
    let separated = s.components(separatedBy: .whitespaces)
    
    return separated.enumerated().reduce(into: 0) { sum, target in
        let num = target.element == "Z" ? Int(String(separated[target.offset - 1]))! * -1 : Int(String(target.element))!
        return sum += num        
    }
}