import XCTest

final class TickerServiceTests: XCTestCase {
    
    func testTimerFiringThreeTimesWithAnExactlyASecondIntervalBetween() {
        let expectation = XCTestExpectation(description: "Timer fired")
        expectation.expectedFulfillmentCount = 3
        
        var lastFiringDate : Date?
        let tickerService = TickerService()
        tickerService.start()
        // Set up an observer for datePublisher to fulfill the expectation
        let observation = tickerService.$datePublisher.sink { date in
            if let lastFiringDateUnwrapped = lastFiringDate {
                expectation.fulfill()
                let timeInterval = date.timeIntervalSince(lastFiringDateUnwrapped)
                //As it happens the actual firing interval is not exactly a second, but a second + 1/100000 of a second, hence the accuracy parameter
                XCTAssertEqual(timeInterval, 1, accuracy: 0.01, "Timer did not fire with an interval of at least 0.9 seconds")
            }
            lastFiringDate = date
        }
        
        // Wait for the timer to fire at least three times
        wait(for: [expectation], timeout: 3.5) // .5 is for tolerance above. Won't need this much but better be on the safe side in case of slower execution, say on pipeline runners
        observation.cancel()
    }
}
