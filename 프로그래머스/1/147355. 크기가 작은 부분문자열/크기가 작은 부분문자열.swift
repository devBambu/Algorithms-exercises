import Foundation

func solution(_ t:String, _ p:String) -> Int {    
    return (0...(t.count - p.count)).reduce(0) { count, num in
        t.dropFirst(num).prefix(p.count) <= p ? count + 1 : count
    }
}