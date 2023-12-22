import XCTest

final class DateHelperTests: XCTestCase {
    
    let testDateInSeconds:Double = 1000000000 //04:46:40
    
    func testGetSecondsFromDate() {
        let date = Date(timeIntervalSince1970: testDateInSeconds)
        XCTAssertEqual(DateHelper.getSeconds(from: date), 40)
    }
}
