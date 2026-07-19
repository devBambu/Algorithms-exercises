import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    let dic = db.reduce(into: [String: String]()) {
        $0[$1[0]] = $1[1]
    }
    
    if let password = dic[id_pw[0]] {
        return password == id_pw[1] ? "login" : "wrong pw"
    } else {
        return "fail"
    }
}