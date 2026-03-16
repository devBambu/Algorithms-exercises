import Foundation

func solution(_ n:Int) -> Int {
    if n < 4 {
        return 0
    } else {
        return (4...n).reduce(0) { count, num in
            let divisorCount = (1...num).reduce(0) {
                return num.isMultiple(of: $1) ? $0 + 1 : $0
            }
                                  
            return divisorCount >= 3 ? count + 1 : count
        }
    }    
}