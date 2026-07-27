import Foundation

func solution(_ lines:[[Int]]) -> Int {
    var appeared: Set<Int> = []
    var overlapped: Set<Int> = []
    
    for line in lines {
        for position in line[0]..<line[1] {
            if !appeared.contains(position) {
                appeared.insert(position)
            } else {
                overlapped.insert(position)
            }
        }
    }
    
    return overlapped.count
}