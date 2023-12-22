import Foundation

struct BerlinClock: BerlinClockProtocol {
    var date: Date
    
    func getTimeString() -> String {
        DateHelper.timeFormat.string(from: date)
    }
    
    func getSecondsBulb() -> Bulb {
        DateHelper.getSeconds(from: date) % 2 == 0 ? .yellow : .off
    }
    
    func getFiveHourRow() -> [Bulb] {
        calculateAndAssembleBulbsArray(for: .fiveHourRow, turnedOnCount: DateHelper.getHours(from: date) / 5)
    }

    func getSingleHourRow() -> [Bulb] {
        calculateAndAssembleBulbsArray(for: .singleHourRow, turnedOnCount: DateHelper.getHours(from: date) % 5)
    }
    
    func getFiveMinuteRow() -> [Bulb] {
        [.red] //placeholder
    }
    
    func getSingleMinuteRow() -> [Bulb] {
        [.red] //placeholder
    }
    
    private func calculateAndAssembleBulbsArray(for berlinClockRowModel: BerlinClockRowModel, turnedOnCount: Int) -> [Bulb] {
        var bulbsTurnedOn = [Bulb](repeating: berlinClockRowModel.illuminatedBulbForRow, count: turnedOnCount)
        let bulbsTurnedOff = [Bulb](repeating: .off, count: berlinClockRowModel.bulbCount - turnedOnCount)
        return bulbsTurnedOn + bulbsTurnedOff
    }
}
