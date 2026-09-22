import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    let skipped = "abcdefghijklmnopqrstuvwxyz"
    .filter { !skip.contains($0) }
    .map { $0 }
    
    return s.reduce("") { result, target in
        let i = (skipped.firstIndex(of: target)! + index) % skipped.count
        return result + String(skipped[i])
    }
}
