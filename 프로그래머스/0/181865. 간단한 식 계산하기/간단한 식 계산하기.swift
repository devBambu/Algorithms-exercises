import Foundation

func solution(_ binomial:String) -> Int {
    var split = binomial.split(separator: " ").map(String.init)
    let op = String(split.remove(at: 1))
    let num = split.compactMap(Int.init)
    switch op {
        case "+":
            return num[0] + num[1]
        case "-":
            return num[0] - num[1]
        case "*":
            return num[0] * num[1]
        default:
        return 0
    }

}