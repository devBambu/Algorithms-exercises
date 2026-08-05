import Foundation

func solution(_ s:String) -> Bool
{
    let lower = s.lowercased()
    
    if !lower.contains("p") && !lower.contains("y") { return true }
    
    return lower.count(where: { $0 == "p"} ) == lower.count(where: { $0 == "y"})
}