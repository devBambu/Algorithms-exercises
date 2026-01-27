import Foundation

func solution(_ hp:Int) -> Int {
    var target = hp
 
    return [5, 3, 1].reduce(into: 0) {
        $0 += target / $1
        target = target % $1
    }
}