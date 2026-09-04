import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    let atks = (1...number).map { knight in
        guard knight > 1 else { return 1 }
                                 
        var atk = 0
                                 
        for n in (1..<knight) {
            if n * n > knight { break }
            if n * n == knight {
                atk += 1
                break
            } else if knight % n == 0 {
                atk += 2 // 약수는 쌍을 이루기 때문에 +2
            }
        }
                                 
        return atk > limit ? power : atk
    }
    
    return atks.reduce(0, +)
}