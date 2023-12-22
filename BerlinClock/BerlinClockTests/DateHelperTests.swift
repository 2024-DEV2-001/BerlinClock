import XCTest

final class DateHelperTests: XCTestCase {
    
    let testDateInSeconds:Double = 1000000000 //04:46:40
    
    func testGetSecondsFromDate() {
        let date = Date(timeIntervalSince1970: testDateInSeconds)
        XCTAssertEqual(DateHelper.getSeconds(from: date), 40)
    }
    
    func testGetHoursFromDate() {
        let date = Date(timeIntervalSince1970: testDateInSeconds)
        XCTAssertEqual(DateHelper.getHours(from: date), 4)
    }
    
    func testTimeFormat() {
        let date = Date(timeIntervalSince1970: testDateInSeconds)
        let formattedString = DateHelper.timeFormat.string(from: date)
        XCTAssertEqual(formattedString, "04:46:40")
    }
}
