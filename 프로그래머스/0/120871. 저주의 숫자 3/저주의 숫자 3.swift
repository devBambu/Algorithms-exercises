import Foundation

func solution(_ n:Int) -> Int {
    // 15 -> 25
    // 5(3의 배수 개수) -> 20
    // 15 ~ 20 = 1개 -> 21
    // 21은 3의 배수 = 1개 -> 22
    // 22까지 '3'포함 = 1개 (13) -> 23
    // 23은 '3'포함 = 1개 -> 24
    // 24는 3의 배수 -> 25

    var num = 0
    
    for target in 1...n {
        num += 1
        
        while true {
            if num % 3 == 0 { // 3의 배수일 경우
                num += 1
            } else if String(num).contains("3") { // 3이 포함된 경우
                num += 1
            } else {
                break
            }
        }
    }
    
    return num
}