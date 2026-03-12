import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var map = my_string.map { String($0) }
    map.swapAt(num1, num2)
    return map.joined()
}