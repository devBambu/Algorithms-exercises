import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    // 양꼬치 / 10 == 서비스 음료수
    let service = n / 10
    let actual = k - service
    
    return n * 12000 + actual * 2000
}