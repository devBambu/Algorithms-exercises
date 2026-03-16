import Foundation

func solution(_ my_string:String) -> String {
    var letters = Set(my_string)
    
    return my_string.reduce("") {
        if letters.contains($1) {
            letters.remove($1)
            return $0 + String($1)
        } else {
            return $0
        }
    }
}