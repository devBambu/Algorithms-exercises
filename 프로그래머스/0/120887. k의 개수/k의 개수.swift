import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    return (i...j).reduce("") {
        $0 + String($1)
    }.filter { String($0) == String(k) }.count
}