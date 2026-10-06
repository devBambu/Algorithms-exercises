import Foundation

func solution(_ new_id:String) -> String {
    // 매 단계마다 유효성검사를 하고 조건에 맞지 않는 경우에만 새로운 아이디를 추천한다는 것으로 생각함
    var round = 0
    var id = new_id
    
    let regex = #/[a-z0-9_.-]/#
    let dotSet = CharacterSet(charactersIn: ".")
    
    while !validation(id), round <= 7 {
        round += 1
        switch round {
            case 1:
            id = id.lowercased()
            
            case 2:
            id = id.filter {
                String($0).wholeMatch(of: regex)?.output != nil
            }.map { String($0) }.joined()
            
            case 3:
            var prev: Character = "#"
            id = id.map {
                if $0 == "." && prev == "." {
                    return ""
                } else {
                    prev = $0
                    return String($0)
                }
            }.joined()
            
            case 4:
            id = id.trimmingCharacters(in: dotSet)
            
            case 5:
            id = id.isEmpty ? "a" : id
            
            case 6:
            let arr = Array(id).map { String($0) }
            let new = arr.count >= 16 ? arr[0..<15].joined() : id
            id = new.trimmingCharacters(in: dotSet)
            
            default:
            let count = max(3 - id.count, 0)
            id += String(repeating: id.last!, count: count)
        }
    }

    return id
    
    func validation(_ id: String) -> Bool {
        let twoDots = !id.contains("..") // 연속 마침표 여부
        let dot = id.trimmingCharacters(in: dotSet) == id // 앞뒤 마침표 여부
        let match = id.allSatisfy {
            String($0).wholeMatch(of: regex)?.output != nil
        } // 알파벳, 특수문자 조건
        
        return !id.isEmpty && twoDots && dot && match && id.count >= 3 && id.count <= 15
    }
}