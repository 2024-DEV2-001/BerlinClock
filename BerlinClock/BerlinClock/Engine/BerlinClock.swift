import Foundation

struct BerlinClock: BerlinClockProtocol {
    var date: Date
    
    func getSecondsBulb() -> Bulb {
        DateHelper.getSeconds(from: date) % 2 == 0 ? .yellow : .off
    }
    
    func getFiveHourRow() -> [Bulb] {
        let turnedOnCount = DateHelper.getHours(from: date) / 5
        let rowModel = BerlinClockRowModel.fiveHourRow
        let bulbsTurnedOn = [Bulb](repeating: rowModel.illuminatedBulbForRow, count: turnedOnCount)
        let bulbsTurnedOff = [Bulb](repeating: .off, count: rowModel.bulbCount - turnedOnCount)
        return bulbsTurnedOn + bulbsTurnedOff
    }
    
    func getTimeString() -> String {
        "" //placeholder
    }
    
    func getSingleHourRow() -> [Bulb] {
        [.red] //placeholder
    }
    
    func getFiveMinuteRow() -> [Bulb] {
        [.red] //placeholder
    }
    
    func getSingleMinuteRow() -> [Bulb] {
        [.red] //placeholder
    }
    

    

    
}
