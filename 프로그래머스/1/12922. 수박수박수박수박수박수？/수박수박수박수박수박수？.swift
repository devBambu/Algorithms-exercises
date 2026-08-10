func solution(_ n:Int) -> String {
    return (1...n).reduce("") {
        $1 % 2 != 0 ? $0 + "수" : $0 + "박"
    }
}