import XCTest

final class TickerServiceTests: XCTestCase {
    func testTimerFiringThreeTimesWithAnExactlyASecondIntervalBetween() {
        let expectation = XCTestExpectation(description: "Timer fired")
        expectation.expectedFulfillmentCount = 3
        
        var lastFiringDate : Date?
        let tickerService = TickerService()
        tickerService.start()
        
        let observation = tickerService.$datePublisher.sink { date in
            lastFiringDate = date
            expectation.fulfill()
            let timeInterval = date.timeIntervalSince(lastFiringDateUnwrapped)
            XCTAssertEqual(timeInterval, 1, "Timer did not fire with an interval of 1 second")
        }
        
        wait(for: [expectation], timeout: 3)
        observation.cancel()
    }
}
