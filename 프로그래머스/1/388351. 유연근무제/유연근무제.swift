import Foundation

func solution(_ schedules:[Int], _ timelogs:[[Int]], _ startday:Int) -> Int {
    var prize = 0 // 상품 받을 직원의 수
    
    for (i, schedule) in schedules.enumerated() {
        var pass = true
        let scheduleHour = schedule / 100
        let scheduleMinute = schedule % (scheduleHour * 100)
        
        let passHour = scheduleMinute + 10 >= 60 ? scheduleHour + 1 : scheduleHour
        let passMinute = scheduleMinute + 10 >= 60 ? abs(scheduleMinute - 50) : scheduleMinute + 10

        for (j, time) in timelogs[i].enumerated() {
            let weekday = (j + startday) % 7
            guard weekday != 6 && weekday != 0 else { continue } // 주말일 경우 생략

            let hour = time / 100
            let minute = time % (hour * 100)
            
            pass = hour < passHour ? true
                : hour > passHour ? false
                : minute <= passMinute
            
            if !pass { break }
        }

        prize += pass ? 1 : 0
    }
    
    return prize
}