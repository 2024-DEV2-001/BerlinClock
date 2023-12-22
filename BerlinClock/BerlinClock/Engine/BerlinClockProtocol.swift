import Foundation

protocol BerlinClockProtocol {
    var date: Date { get set }
    func getTimeString() -> String
    func getSecondsBulb() -> Bulb
    func getFiveHourRow() -> [Bulb]
    func getSingleHourRow() -> [Bulb]
    func getFiveMinuteRow() -> [Bulb]
    func getSingleMinuteRow() -> [Bulb]
}
