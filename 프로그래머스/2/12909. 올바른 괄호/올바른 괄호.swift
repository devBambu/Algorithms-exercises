import Foundation

func solution(_ s:String) -> Bool
{
    var num = 0
    for character in s {
        num = character == #"("# ? num + 1 : num - 1
        
        if num < 0 { break }
    }

    return num == 0 ? true : false
}

// func solution(_ s:String) -> Bool
// {
//     var stack: [Character] = []
    
//     for c in s {
//         if c == "(" {
//             stack.append(c)
//         } else {
//             if stack.isEmpty {
//                 return false
//             } else {
//                 stack.popLast()
//             }
//         }
//     }    

//     return stack.isEmpty
// }