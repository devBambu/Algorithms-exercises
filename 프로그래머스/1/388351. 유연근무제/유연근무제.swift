import Foundation

func solution(_ schedules:[Int], _ timelogs:[[Int]], _ startday:Int) -> Int {
    var prize = 0 // 상품 받을 직원의 수
    
    for (i, schedule) in schedules.enumerated() {
        var pass = true
        let passTime = calculateToMinute(of: schedule) + 10

        for (j, time) in timelogs[i].enumerated() {
            let weekday = (j + startday) % 7
            guard weekday != 6 && weekday != 0 else { continue } // 주말일 경우 생략

            let target = calculateToMinute(of: time)
            pass = target <= passTime
            
            if !pass { break }
        }

        prize += pass ? 1 : 0
    }
    
    return prize
    
    func calculateToMinute(of schedule: Int) -> Int {
        (schedule / 100 * 60) + (schedule % 100)
    }
}