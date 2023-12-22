import Foundation

struct BerlinClock {
    var date: Date
    
    func getSecondsBulb() -> Bulb {
        DateHelper.getSeconds(from: date) % 2 == 0 ? .yellow : .off
    }
}
