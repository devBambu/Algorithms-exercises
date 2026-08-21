import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()
    
    for command in commands {
        let (i, j, k) = (command[0] - 1, command[1], command[2] - 1)
        let slice = array[i..<j].sorted()
        result.append(slice[k])
    }
    
    return result
}