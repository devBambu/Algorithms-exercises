func solution(_ n:Int) -> Int {
    var p = 0
    var pp = 0
    var sum = 0
    
    for num in 0...n {
        if num == 1 {
            p = num
        } else if num != 0 {
            // 2 : 1 + 0
            sum = p + pp
            
            pp = p
            p = sum % 1234567
        }
    }
    
    return sum % 1234567
}

// func solution(_ n:Int) -> Int {
//     func fibonacci(_ num: Int) -> Int {
//         if num == 0 { 
//             return 0
//         } else if num == 1 { 
//             return 1
//         } else {
//             return fibonacci(num - 1) + fibonacci(num - 2)
//         }
//     }
                                                                                     
//     return fibonacci(n) % 1234567
// }