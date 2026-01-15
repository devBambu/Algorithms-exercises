class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let arrX = String(x).map{ Int(String($0)) } // 정수 x를 배열로 변환
        return arrX == arrX.reversed() // 조건 확인
    }
}

// 처음 작성했던 코드
// - palindrome이 중간 숫자를 기점으로 앞과 뒤가 똑같은 것이라고 생각했음. (131이라면, 3을 기준으로 앞의 1과 뒤의 1이 같은지를 비교해야한다고 생각)
extension Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let arrX = String(x).map{ Int(String($0)) } // 정수 x를 배열로 변환
        let centerIdx = (arrX.count) / 2 // 배열 x의 중간 인덱스 확인
        return arrX[..<centerIdx] == arrX[(centerIdx + 1)...]
    }
}
// -> x = 10인 경우와 같이 짝수일 때 에러 발생
