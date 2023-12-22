import XCTest

class BerlinClockViewUITests: XCTestCase {
    
    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testBerlinClockViewUI() throws {
        app.launch()
        
        checkExistenceOf("secondsBulb")
        checkExistenceOf("fiveHoursRow0")
        checkExistenceOf("fiveHoursRow1")
        checkExistenceOf("fiveHoursRow2")
        checkExistenceOf("fiveHoursRow3")
        checkExistenceOf("singleHoursRow0")
        checkExistenceOf("singleHoursRow1")
        checkExistenceOf("singleHoursRow2")
        checkExistenceOf("singleHoursRow3")
        checkExistenceOf("fiveMinutesRow0")
        checkExistenceOf("fiveMinutesRow1")
        checkExistenceOf("fiveMinutesRow2")
        checkExistenceOf("fiveMinutesRow3")
        checkExistenceOf("fiveMinutesRow4")
        checkExistenceOf("fiveMinutesRow5")
        checkExistenceOf("fiveMinutesRow6")
        checkExistenceOf("fiveMinutesRow7")
        checkExistenceOf("fiveMinutesRow8")
        checkExistenceOf("fiveMinutesRow9")
        checkExistenceOf("fiveMinutesRow10")
        checkExistenceOf("singleMinutesRow0")
        checkExistenceOf("singleMinutesRow1")
        checkExistenceOf("singleMinutesRow2")
        checkExistenceOf("singleMinutesRow3")
    }
    
    private func checkExistenceOf(_ element: String) {
        XCTAssertTrue(app.otherElements[element].waitForExistence(timeout: 5), "\(element) should have existed")

    }
}
