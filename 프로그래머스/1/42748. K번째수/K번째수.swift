import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map { command in
        let (i, j, k) = (command[0] - 1, command[1], command[2] - 1)
        let slice = array[i..<j].sorted()
        return slice[k]
    }
}