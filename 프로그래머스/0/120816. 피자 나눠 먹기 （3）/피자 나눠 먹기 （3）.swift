import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    // x * slice >= n
    // x >= n / slice
    
    return n / slice + (n % slice == 0 ? 0 : 1)
}