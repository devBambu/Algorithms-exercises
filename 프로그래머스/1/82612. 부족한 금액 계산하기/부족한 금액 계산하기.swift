import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let balance = (1...count).reduce(money) {
        $0 - ($1 * price)
    }
    
    return balance > 0 ? 0 : Int64(balance * -1)
}