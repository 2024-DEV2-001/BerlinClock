import XCTest

final class BerlinClockRowModelTests: XCTestCase {

    func testBulbCount() {
        XCTAssertEqual(BerlinClockRowModel.fiveHourRow.bulbCount, 4)
        XCTAssertEqual(BerlinClockRowModel.singleHourRow.bulbCount, 4)
        XCTAssertEqual(BerlinClockRowModel.fiveMinutesRow.bulbCount, 11)
        XCTAssertEqual(BerlinClockRowModel.singleMinutesRow.bulbCount, 4)
    }

    func testBulbForRow() {
        XCTAssertEqual(BerlinClockRowModel.fiveHourRow.illuminatedBulbForRow, Bulb.red)
        XCTAssertEqual(BerlinClockRowModel.singleHourRow.illuminatedBulbForRow, Bulb.red)
        XCTAssertEqual(BerlinClockRowModel.fiveMinutesRow.illuminatedBulbForRow, Bulb.yellow)
        XCTAssertEqual(BerlinClockRowModel.singleMinutesRow.illuminatedBulbForRow, Bulb.yellow)
    }

    func testIsEveryThirdBulbRed() {
        XCTAssertFalse(BerlinClockRowModel.fiveHourRow.isEveryThirdBulbRed)
        XCTAssertFalse(BerlinClockRowModel.singleHourRow.isEveryThirdBulbRed)
        XCTAssertTrue(BerlinClockRowModel.fiveMinutesRow.isEveryThirdBulbRed)
        XCTAssertFalse(BerlinClockRowModel.singleMinutesRow.isEveryThirdBulbRed)
    }
}
