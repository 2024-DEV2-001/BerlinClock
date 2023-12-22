import XCTest
import SwiftUI

final class BulbTests: XCTestCase {
    func testRedBulb() {
        let bulb = Bulb.red
        XCTAssertEqual(bulb.textualRepresentation, "R")
        XCTAssertEqual(bulb.color, Color.red)
    }
    
    func testTextualRepresentationForYellowBulb() {
        let bulb = Bulb.yellow
        XCTAssertEqual(bulb.textualRepresentation, "Y")
        XCTAssertEqual(bulb.color, Color.yellow)
    }
    
    func testTextualRepresentationForOffBulb() {
        let bulb = Bulb.off
        XCTAssertEqual(bulb.textualRepresentation, "O")
        XCTAssertEqual(bulb.color, Color.clear)
    }
}
