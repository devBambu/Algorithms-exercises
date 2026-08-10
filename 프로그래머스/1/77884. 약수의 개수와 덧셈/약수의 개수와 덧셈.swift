import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    return (left...right).reduce(0) { sum, num in
        let count = (1...num).count(where: { num % $0 == 0 })
        return count % 2 == 0 ? sum + num : sum - num
    }
}