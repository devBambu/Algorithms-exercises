import Foundation

func solution(_ schedules:[Int], _ timelogs:[[Int]], _ startday:Int) -> Int {
    var prize = 0 // 상품 받을 직원의 수
    
    for (i, schedule) in schedules.enumerated() {
        var pass = false
        let scheduleHour = schedule / 100
        let scheduleMinute = schedule - scheduleHour

        for (j, time) in timelogs[i].enumerated() {
            let weekday = (j + startday) % 7
            guard weekday != 6 && weekday != 0 else { continue } // 주말일 경우 생략

            let hour = time / 100
            let minute = time - hour
            
            if scheduleHour == hour {
                pass = minute <= (scheduleMinute + 10)
            } else if scheduleHour < hour, (hour - scheduleHour) == 1 {
                let availableMinute = scheduleMinute + 10 >= 60 ? scheduleMinute + 50 : scheduleMinute + 10
                pass = minute <= availableMinute
            } else {
                pass = scheduleHour > hour
            }
            
            if !pass { break }
        }
        
        prize += pass ? 1 : 0
    }
    
    return prize
}