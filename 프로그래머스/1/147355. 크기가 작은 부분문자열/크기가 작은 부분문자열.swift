import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var target = t
    
    return (0...(t.count - p.count)).reduce(0) { count, num in
        if num != 0 { target.removeFirst() }
 
        return target.prefix(p.count) <= p ? count + 1 : count
    }
}