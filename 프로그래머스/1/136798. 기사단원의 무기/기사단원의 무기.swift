import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    let atks = (1...number).map { knight in
        guard knight > 1 else { return 1 }
                                 
        var atk = 0  
        var n = 1
                                 
        while n * n <= knight {
            atk = n * n == knight ? atk + 1
            : knight % n == 0 ? atk + 2 : atk // 약수는 쌍을 이루기 때문에 +2
            
            n += 1
        }
                                 
        return atk > limit ? power : atk
    }
    
    return atks.reduce(0, +)
}