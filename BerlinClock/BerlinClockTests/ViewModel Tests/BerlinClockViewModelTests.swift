import XCTest
import Combine

class BerlinClockViewModelTests: XCTestCase {
    
    var viewModel: BerlinClockViewModel!
    var tickerService: TickerServiceMock!
    var berlinClock: BerlinClock!
    
    override func setUp() {
        super.setUp()
        tickerService = TickerServiceMock()
        berlinClock = BerlinClock(date: Date())
        viewModel = BerlinClockViewModel(tickerService: tickerService, berlinClock: berlinClock)
    }
    
    override func tearDown() {
        super.tearDown()
        viewModel = nil
        tickerService = nil
        berlinClock = nil
    }
}

class TickerServiceMock {
    
}
