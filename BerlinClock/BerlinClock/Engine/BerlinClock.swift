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
        calculateAndAssembleBulbsArray(for: .fiveMinutesRow, turnedOnCount: DateHelper.getMinutes(from: date) / 5)
    }
    
    func getSingleMinuteRow() -> [Bulb] {
        calculateAndAssembleBulbsArray(for: .singleMinutesRow, turnedOnCount: DateHelper.getMinutes(from: date) % 5)
    }
    
    private func calculateAndAssembleBulbsArray(for berlinClockRowModel: BerlinClockRowModel, turnedOnCount: Int) -> [Bulb] {
        var bulbsTurnedOn = [Bulb](repeating: berlinClockRowModel.illuminatedBulbForRow, count: turnedOnCount)
        if berlinClockRowModel.isEveryThirdBulbRed {
            bulbsTurnedOn = bulbsTurnedOn.enumerated().compactMap { index, element in index % 3 == 2 ? .red : element }
        }
        let bulbsTurnedOff = [Bulb](repeating: .off, count: berlinClockRowModel.bulbCount - turnedOnCount)
        return bulbsTurnedOn + bulbsTurnedOff
    }
}
