import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    let alphabet = [
        "a", "b", "c", "d", "e", "f", "g",
        "h", "i", "j", "k", "l", "m", "n", "o", "p", 
        "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
        ]
    let skipped = alphabet.filter { !skip.contains($0) }
    
    return s.reduce("") { result, target in
        let i = (skipped.firstIndex(of: String(target))! + index) % skipped.count
        return result + skipped[i]
    }
}
