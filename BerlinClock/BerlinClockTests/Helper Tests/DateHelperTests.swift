import XCTest

final class DateHelperTests: XCTestCase {
    
    let testDateInSeconds:Double = 1000000000 //04:46:40
    
    func testTimeFormat() {
        let date = Date(timeIntervalSince1970: testDateInSeconds)
        let formattedString = DateHelper.timeFormat.string(from: date)
        XCTAssertEqual(formattedString, "04:46:40")
    }
    
    func testGetHoursFromDate() {
        let date = Date(timeIntervalSince1970: testDateInSeconds)
        XCTAssertEqual(DateHelper.getHours(from: date), 4)
    }
    
    func testGetMinutesFromDate() {
        let date = Date(timeIntervalSince1970: testDateInSeconds)
        XCTAssertEqual(DateHelper.getMinutes(from: date), 46)
    }
    
    func testGetSecondsFromDate() {
        let date = Date(timeIntervalSince1970: testDateInSeconds)
        XCTAssertEqual(DateHelper.getSeconds(from: date), 40)
    }
    
    func testGetNextSecondFromNow() {
        let currentDate = Date()
        let nextSecondDate = DateHelper.getNextSecondFromNow()
        
        XCTAssertNotNil(nextSecondDate)
        
        if let nextSecondDate = nextSecondDate {
            let components = Calendar.current.dateComponents([.second], from: currentDate, to: nextSecondDate)
            XCTAssertEqual(components.second, 1)
        }
    }
}
