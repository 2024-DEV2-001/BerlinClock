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
    
    func testTickerServiceInvalidateCalledOnDeinit() {
        XCTAssertFalse(tickerService.invalidateCalled)
        viewModel = nil
        XCTAssertTrue(tickerService.invalidateCalled)
    }
    
    func testPublishedPropertiesUpdatedOnTickerServiceEvent() {
        let date = Date()
        tickerService.simulateDateChange(date)
        
        XCTAssertEqual(viewModel.secondsBulb, berlinClock.getSecondsBulb())
        XCTAssertEqual(viewModel.fiveHoursRow, berlinClock.getFiveHourRow())
        XCTAssertEqual(viewModel.singleHoursRow, berlinClock.getSingleHourRow())
        XCTAssertEqual(viewModel.fiveMinutesRow, berlinClock.getFiveMinuteRow())
        XCTAssertEqual(viewModel.singleMinutesRow, berlinClock.getSingleMinuteRow())
        XCTAssertEqual(viewModel.timeString, berlinClock.getTimeString())
    }
}

class TickerServiceMock: TickerService {
    var invalidateCalled = false

    override func invalidate() {
        super.invalidate()
        invalidateCalled = true
    }

    func simulateDateChange(_ date: Date) {
        datePublisher = date
    }
}
