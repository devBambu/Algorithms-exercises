import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{    
    // n(a + I) / 2 --- 등차수열의 합: a는 첫째 항, I는 마지막 항, n은 count 
    
    // amount = count(price + price * count) / 2
    // (price * count + price * count * count ) / 2
    // ((price * count)(1 + count)) / 2
    
    let amount = ((price * count) * (1 + count)) / 2
    let balance = money - amount
    
    return balance > 0 ? 0 : Int64(balance * -1)
}