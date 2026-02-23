import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    let sorted = rank.enumerated().filter { attendance[$0.offset] == true }.sorted { $0.element < $1.element }
    
    return sorted[0].offset * 10000 + sorted[1].offset * 100 + sorted[2].offset
}