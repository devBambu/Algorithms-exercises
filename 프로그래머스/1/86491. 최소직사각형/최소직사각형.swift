import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    
    var sizes = sizes
    
    for i in sizes.indices {
        if sizes[i][0] < sizes[i][1] { sizes[i].swapAt(0, 1) } 
    }
    
    let a = sizes.compactMap{ $0[0] }.max()!
    let b = sizes.compactMap{ $0[1] }.max()!
    
    return a * b
}

/* 푸는 방법이 감이 안잡혔었는데... 튜터님께서 접근법을 알려주셔서 풀 수 있었다.
계속 최대 가로와 최대 세로만 생각해서 두 수를 구하고, 최대 길이를 가진 sizes의 가로와 세로를 바꾸어서 다시 계산하는 식으로 접근했었다.
하지만 계산도 복잡해지고 코드도 너무 길어졌었다..

튜터님께서 '가로'인지 '세로'인지는 중요하지 않고, 각 사이즈의 큰 값들 끼리, 작은값들 끼리 비교를 해보라 힌트를 주셨다.
다행히 바로 해결할 수 있었다. */
