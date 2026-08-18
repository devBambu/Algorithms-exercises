import Foundation

func solution(_ s:String) -> [Int] {
    let characters = s.map { String($0) }
    
    return characters.enumerated().map {
        if characters.firstIndex(of: $0.element)! == $0.offset {
            return -1
        } else {
            let last = characters[0..<$0.offset].lastIndex(of: $0.element)!
            return $0.offset - last
        }
    }
}