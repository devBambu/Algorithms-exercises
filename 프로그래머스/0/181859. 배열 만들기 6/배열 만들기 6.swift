import Foundation

func solution(_ arr:[Int]) -> [Int] {
    // stk.isEmpty일 경우 stk.append(arr[i]), i + 1
    // !stk.isEmpty일 경우
    // 1) stk.last? == arr[i] ? stk.popLast(), i + 1
    // 2) stk.last != arr[i] ? stk.append(arr[i]), i + 1
    // return stk.isEmpty ? [-1] : stk
    
//     var stk = [Int]()
    
//     for i in arr.indices {
//         if !stk.isEmpty, stk.last! == arr[i] {
//             stk.popLast()
//         } else {
//             stk.append(arr[i])
//         }
//     }
//     return stk.isEmpty ? [-1] : stk
    
    let stk = arr.reduce(into: [Int]()) {
        if !$0.isEmpty, $0.last! == $1 {
            $0.popLast()
        } else {
            $0.append($1)
        }
    }
    
    return stk.isEmpty ? [-1] : stk
}