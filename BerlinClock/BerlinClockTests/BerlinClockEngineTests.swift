import XCTest

final class BerlinClockEngineTests: XCTestCase {

    var clock: BerlinClock!
    
    override func setUp() async throws {
        guard let date = DateHelper.timeFormat.date(from: "00:00:00") else {
            XCTFail("Error initializing date")
            return
        }
        clock = BerlinClock(date: date)
    }
    
    func testSecondsBulb() throws {
        let oneSecond:Double =  1
        XCTAssertEqual(clock.getSecondsBulb(), "Y")
        
        var dateByAddingOneSecond = clock.date.addingTimeInterval(oneSecond)
        clock = BerlinClock(date: dateByAddingOneSecond)
        XCTAssertEqual(clock.getSecondsBulb(), "O")
        
        dateByAddingOneSecond = clock.date.addingTimeInterval(oneSecond)
        clock = BerlinClock(date: dateByAddingOneSecond)
        XCTAssertEqual(clock.getSecondsBulb(), "Y")
    }
}
