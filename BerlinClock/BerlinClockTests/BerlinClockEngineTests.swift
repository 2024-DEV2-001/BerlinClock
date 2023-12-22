import XCTest

final class BerlinClockEngineTests: XCTestCase {

    var clock: BerlinClockEngine!
    
    override func setUp() async throws {
        guard let date = DateHelper.timeFormat.date(from: "00:00:00") else {
            XCTFail("Error initializing date")
            return
        }
        clock = BerlinClockEngine()
        clock.setDate(date)
    }
    
    func testSecondsBulb() throws {
        let oneSecond:Double =  1
        XCTAssertEqual(clock.getSecondsBulb(), "Y")
        
        var dateByAddingOneSecond = clock.date.addingTimeInterval(oneSecond)
        clock = BerlinClockEngine()
        clock.setDate(dateByAddingOneSecond)
        XCTAssertEqual(clock.getSecondsBulb(), "O")
        
        dateByAddingOneSecond = clock.date.addingTimeInterval(oneSecond)
        clock.setDate(dateByAddingOneSecond)
        XCTAssertEqual(clock.getSecondsBulb(), "Y")
    }
}
