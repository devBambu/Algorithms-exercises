import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    // n * 2의 t제곱 == 최종 세균의 수
    // pow 함수는 기본적으로 Decimal을 받고 Decimal을 반환 -- pow(_: Decimal, _: Int) -> Decimal로 하면 결과를 Int형 변환 시 오류 발생
    // -- 인자 모두 소수점형으로 변환 필요 : pow(_: Float, _: Float) -> Float로 사용하는 것
    // https://hongssup.tistory.com/297 참고
    return n * Int(pow(2.0, Double(t)))
}