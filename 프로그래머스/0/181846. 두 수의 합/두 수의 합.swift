import Foundation

func solution(_ a:String, _ b:String) -> String {     
    var arrA = Array(a.map { Int(String($0))! }.reversed())
    var arrB = Array(b.map { Int(String($0))! }.reversed())
    
    // 배열 자릿수 맞추기
    let count = arrA.count - arrB.count
    if count < 0 { // B 자릿수가 더 큰 경우
        arrA = arrA + Array(repeating: 0, count: abs(count))
    } else { // A 자릿수가 더 큰 경우
        arrB = arrB + Array(repeating: 0, count: count)
    }
    
    var result = ""
    var carry = 0
    
    for i in 0..<arrA.count {
        let sum = arrA[i] + arrB[i] + carry
        result += String(sum % 10) // 자릿수 변경없는 덧셈값 - ex) 4 + 8일 경우, 일의 자리 수 결과인 2만 append
        carry = sum / 10 // 올라가는 자릿수를 임시 보관 - ex) 4 + 8일 경우, 십의 자리 수 결과인 1
    }
    
    if carry > 0 {
        result += String(carry) // 마지막 올림 수를 추가
    }
    
    return String(result.reversed())
}