import Foundation

func solution(_ dots:[[Int]]) -> Int { 
    let xs = dots.map { $0[0] }
    let ys = dots.map { $0[1] }
    
    return (xs.max()! - xs.min()!) * (ys.max()! - ys.min()!)
}