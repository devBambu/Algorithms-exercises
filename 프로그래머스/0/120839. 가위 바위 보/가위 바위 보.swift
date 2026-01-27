import Foundation

func solution(_ rsp:String) -> String {
    // 가위 바위 2 - 0 = 2 || 0 - 2 = -2
    // 바위 보 0 - 5 = -5 || 5 - 0 = 5
    // 가위 보 2 - 5 = -3 || 5 - 2 = 3
    
    return rsp.reduce(into: "") {
        if $1 == "2" { $0 += "0"}
        else if $1 == "0" { $0 += "5"}
        else if $1 == "5" { $0 += "2"}
    }
}