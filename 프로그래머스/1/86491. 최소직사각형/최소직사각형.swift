import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    
    var sizes = sizes
    
    for i in sizes.indices {
        if sizes[i][0] < sizes[i][1] { sizes[i].swapAt(0, 1) } 
    }
    
    let a = sizes.compactMap{ $0[0] }.max()!
    let b = sizes.compactMap{ $0[1] }.max()!
    
    return a * b
}