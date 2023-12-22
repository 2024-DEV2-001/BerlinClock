import Foundation

class BerlinClockViewModelFactory {
    static func createBerlinClockViewModel() -> BerlinClockViewModel {
        let tickerService = TickerService()
        let berlinClock = BerlinClock(date: Date())
        return BerlinClockViewModel(tickerService: tickerService, berlinClock: berlinClock)
    }
}
