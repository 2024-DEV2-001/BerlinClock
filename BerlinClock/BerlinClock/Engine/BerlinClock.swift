import Foundation

struct BerlinClock {
    var date: Date
    
    func getSecondsBulb() -> String {
        DateHelper.getSeconds(from: date) % 2 == 0 ? "Y" : "O"
    }
}
