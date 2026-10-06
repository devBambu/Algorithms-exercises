import Foundation

func solution(_ new_id:String) -> String {
    // 1단계
    var id = new_id.lowercased()
    
    // 2단계
    let regex = #/[a-z0-9_.-]/#
    id = id.filter {
        String($0).wholeMatch(of: regex)?.output != nil
    }.map { String($0) }.joined()
    
    // 3단계
    while id.contains("..") {
        id = id.replacingOccurrences(of: "..", with: ".")
    }
    
    // 4단계
    let dotSet = CharacterSet(charactersIn: ".")
    id = id.trimmingCharacters(in: dotSet)
    
    // 5단계
    id = id.isEmpty ? "a" : id
            
    // 6단계
    if id.count > 15 {
        let e = id.index(id.startIndex, offsetBy: 15)
        id = String(id[id.startIndex..<e])
        id = id.trimmingCharacters(in: dotSet)
    }
           
    // 7단계
    let count = max(3 - id.count, 0)
    id += String(repeating: id.last!, count: count)

    return id
}