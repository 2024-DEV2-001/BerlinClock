import Foundation
import Combine

class BerlinClockViewModel: ObservableObject {

    private var tickerService: TickerService
    private var berlinClock: BerlinClockProtocol
    private var cancellables = Set<AnyCancellable>()
    
    init(tickerService: TickerService, berlinClock: BerlinClockProtocol) {
        self.berlinClock = berlinClock
        self.tickerService = tickerService
    }
    
    deinit {
        tickerService.invalidate()
    }
}
