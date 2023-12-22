import XCTest

final class BerlinClockTests: XCTestCase {

    var clock: BerlinClockProtocol!
    
    override func setUp() async throws {
        guard let date = DateHelper.timeFormat.date(from: "00:00:00") else {
            XCTFail("Error initializing date")
            return
        }
        clock = BerlinClock(date: date)
    }
    
    func testGetTimeString() {
        XCTAssertEqual(clock.getTimeString(), "00:00:00")
    }
    
    func testGetSecondsBulb() throws {
        let oneSecond:Double =  1
        XCTAssertEqual(clock.getSecondsBulb().textualRepresentation, "Y")
        
        var dateByAddingOneSecond = clock.date.addingTimeInterval(oneSecond)
        clock = BerlinClock(date: dateByAddingOneSecond)
        XCTAssertEqual(clock.getSecondsBulb().textualRepresentation, "O")
        
        dateByAddingOneSecond = clock.date.addingTimeInterval(oneSecond)
        clock = BerlinClock(date: dateByAddingOneSecond)
        XCTAssertEqual(clock.getSecondsBulb().textualRepresentation, "Y")
    }
    
    func testGetFiveHourRow() {
        let fiveHours:Double =  5 * 60 * 60
        XCTAssertEqual(clock.getFiveHourRow().textualRepresentation, "OOOO")
        
        var dateByAddingFiveHours = clock.date.addingTimeInterval(fiveHours)
        clock = BerlinClock(date: dateByAddingFiveHours)
        XCTAssertEqual(clock.getFiveHourRow().textualRepresentation, "ROOO")
        
        dateByAddingFiveHours = clock.date.addingTimeInterval(fiveHours)
        clock = BerlinClock(date: dateByAddingFiveHours)
        XCTAssertEqual(clock.getFiveHourRow().textualRepresentation, "RROO")
        
        dateByAddingFiveHours = clock.date.addingTimeInterval(fiveHours)
        clock = BerlinClock(date: dateByAddingFiveHours)
        XCTAssertEqual(clock.getFiveHourRow().textualRepresentation, "RRRO")
        
        dateByAddingFiveHours = clock.date.addingTimeInterval(fiveHours)
        clock = BerlinClock(date: dateByAddingFiveHours)
        XCTAssertEqual(clock.getFiveHourRow().textualRepresentation, "RRRR")
    }
    
    func testGetSingleHourRow() {
        let oneHour:Double =  1 * 60 * 60
        XCTAssertEqual(clock.getSingleHourRow().textualRepresentation, "OOOO")
        
        var dateByAddingOneHour = clock.date.addingTimeInterval(oneHour)
        clock = BerlinClock(date: dateByAddingOneHour)
        XCTAssertEqual(clock.getSingleHourRow().textualRepresentation, "ROOO")
        
        dateByAddingOneHour = clock.date.addingTimeInterval(oneHour)
        clock = BerlinClock(date: dateByAddingOneHour)
        XCTAssertEqual(clock.getSingleHourRow().textualRepresentation, "RROO")
        
        dateByAddingOneHour = clock.date.addingTimeInterval(oneHour)
        clock = BerlinClock(date: dateByAddingOneHour)
        XCTAssertEqual(clock.getSingleHourRow().textualRepresentation, "RRRO")
        
        dateByAddingOneHour = clock.date.addingTimeInterval(oneHour)
        clock = BerlinClock(date: dateByAddingOneHour)
        XCTAssertEqual(clock.getSingleHourRow().textualRepresentation, "RRRR")
    }
    
    func testFiveMinuteRow() {
        let fiveMinutes:Double =  5 * 60
        XCTAssertEqual(clock.getFiveMinuteRow().textualRepresentation, "OOOOOOOOOOO")
        
        var dateByAddingFiveMinutes = clock.date.addingTimeInterval(fiveMinutes)
        clock = BerlinClock(date: dateByAddingFiveMinutes)
        XCTAssertEqual(clock.getFiveMinuteRow().textualRepresentation, "YOOOOOOOOOO")
        
        dateByAddingFiveMinutes = clock.date.addingTimeInterval(fiveMinutes)
        clock = BerlinClock(date: dateByAddingFiveMinutes)
        XCTAssertEqual(clock.getFiveMinuteRow().textualRepresentation, "YYOOOOOOOOO")
        
        dateByAddingFiveMinutes = clock.date.addingTimeInterval(fiveMinutes)
        clock = BerlinClock(date: dateByAddingFiveMinutes)
        XCTAssertEqual(clock.getFiveMinuteRow().textualRepresentation, "YYROOOOOOOO")
        
        dateByAddingFiveMinutes = clock.date.addingTimeInterval(fiveMinutes)
        clock = BerlinClock(date: dateByAddingFiveMinutes)
        XCTAssertEqual(clock.getFiveMinuteRow().textualRepresentation, "YYRYOOOOOOO")
        
        dateByAddingFiveMinutes = clock.date.addingTimeInterval(fiveMinutes)
        clock = BerlinClock(date: dateByAddingFiveMinutes)
        XCTAssertEqual(clock.getFiveMinuteRow().textualRepresentation, "YYRYYOOOOOO")
        
        dateByAddingFiveMinutes = clock.date.addingTimeInterval(fiveMinutes)
        clock = BerlinClock(date: dateByAddingFiveMinutes)
        XCTAssertEqual(clock.getFiveMinuteRow().textualRepresentation, "YYRYYROOOOO")
        
        dateByAddingFiveMinutes = clock.date.addingTimeInterval(fiveMinutes)
        clock = BerlinClock(date: dateByAddingFiveMinutes)
        XCTAssertEqual(clock.getFiveMinuteRow().textualRepresentation, "YYRYYRYOOOO")
        
        dateByAddingFiveMinutes = clock.date.addingTimeInterval(fiveMinutes)
        clock = BerlinClock(date: dateByAddingFiveMinutes)
        XCTAssertEqual(clock.getFiveMinuteRow().textualRepresentation, "YYRYYRYYOOO")
        
        dateByAddingFiveMinutes = clock.date.addingTimeInterval(fiveMinutes)
        clock = BerlinClock(date: dateByAddingFiveMinutes)
        XCTAssertEqual(clock.getFiveMinuteRow().textualRepresentation, "YYRYYRYYROO")
        
        dateByAddingFiveMinutes = clock.date.addingTimeInterval(fiveMinutes)
        clock = BerlinClock(date: dateByAddingFiveMinutes)
        XCTAssertEqual(clock.getFiveMinuteRow().textualRepresentation, "YYRYYRYYRYO")
        
        dateByAddingFiveMinutes = clock.date.addingTimeInterval(fiveMinutes)
        clock = BerlinClock(date: dateByAddingFiveMinutes)
        XCTAssertEqual(clock.getFiveMinuteRow().textualRepresentation, "YYRYYRYYRYY")
    }
    
    func testGetSingleMinuteRow() {
        let oneMinute:Double =  1 * 60
        XCTAssertEqual(clock.getSingleMinuteRow().textualRepresentation, "OOOO")
        
        var dateByAddingOneMinute = clock.date.addingTimeInterval(oneMinute)
        clock = BerlinClock(date: dateByAddingOneMinute)
        XCTAssertEqual(clock.getSingleMinuteRow().textualRepresentation, "YOOO")
        
        dateByAddingOneMinute = clock.date.addingTimeInterval(oneMinute)
        clock = BerlinClock(date: dateByAddingOneMinute)
        XCTAssertEqual(clock.getSingleMinuteRow().textualRepresentation, "YYOO")
        
        dateByAddingOneMinute = clock.date.addingTimeInterval(oneMinute)
        clock = BerlinClock(date: dateByAddingOneMinute)
        XCTAssertEqual(clock.getSingleMinuteRow().textualRepresentation, "YYYO")
        
        dateByAddingOneMinute = clock.date.addingTimeInterval(oneMinute)
        clock = BerlinClock(date: dateByAddingOneMinute)
        XCTAssertEqual(clock.getSingleMinuteRow().textualRepresentation, "YYYY")
    }
}
