import Foundation
import Combine

class BerlinClockViewModel: ObservableObject {
    
    @Published var timeString = ""
    @Published var secondsBulb = Bulb.off
    @Published var fiveHoursRow = [Bulb](repeating: .off, count: 4)
    @Published var singleHoursRow = [Bulb](repeating: .off, count: 4)
    @Published var fiveMinutesRow = [Bulb](repeating: .off, count: 11)
    @Published var singleMinutesRow = [Bulb](repeating: .off, count: 4)
    
    private var tickerService: TickerService
    private var berlinClock: BerlinClockProtocol
    private var cancellables = Set<AnyCancellable>()
    
    init(tickerService: TickerService, berlinClock: BerlinClockProtocol) {
        self.berlinClock = berlinClock
        self.tickerService = tickerService
        tickerService.start()
        tickerService
            .$datePublisher
            .sink { [weak self] date in
                guard var berlinClock = self?.berlinClock else { return }
                berlinClock.date = date
                self?.secondsBulb = berlinClock.getSecondsBulb()
                self?.fiveHoursRow = berlinClock.getFiveHourRow()
                self?.singleHoursRow = berlinClock.getSingleHourRow()
                self?.fiveMinutesRow = berlinClock.getFiveMinuteRow()
                self?.singleMinutesRow = berlinClock.getSingleMinuteRow()
                self?.timeString = berlinClock.getTimeString()
            }
            .store(in: &cancellables)
    }
    
    deinit {
        tickerService.invalidate()
    }
}
