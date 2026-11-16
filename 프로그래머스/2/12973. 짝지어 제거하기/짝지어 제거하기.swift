import Foundation

func solution(_ s:String) -> Int{
    var stack = [Character]()
    
    for t in s {
        if let l = stack.last, t == l {
            stack.popLast()
        } else {
            stack.append(t)
        }
    }
    
    return stack.isEmpty ? 1 : 0
}