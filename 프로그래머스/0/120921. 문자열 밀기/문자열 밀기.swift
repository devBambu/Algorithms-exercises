import Foundation

func solution(_ A:String, _ B:String) -> Int {
    guard A != B else { return 0 }
    
    var char = A.map { String($0) }
    
    for n in 1..<A.count {
        char.insert(char.removeLast(), at: 0)
        if char.joined() == B {
            return n
        }
    }
    return -1
}