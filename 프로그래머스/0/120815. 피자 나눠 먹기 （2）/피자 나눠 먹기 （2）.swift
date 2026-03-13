import Foundation

func solution(_ n:Int) -> Int {    
    for pizza in 1... {
        if (pizza * 6) % n == 0 { return pizza }
    }
    return 0
}