enum BerlinClockRowModel {
    case fiveHourRow
    case singleHourRow
    case fiveMinutesRow
    case singleMinutesRow
    
    var bulbCount: Int {
        get {
            switch self {
            case .fiveHourRow, .singleHourRow, .singleMinutesRow:
                4
            case .fiveMinutesRow:
                11
            }
        }
    }
    
    var illuminatedBulbForRow: Bulb {
        get {
            switch self {
            case .fiveHourRow, .singleHourRow:
                Bulb.red
            case .fiveMinutesRow, .singleMinutesRow:
                Bulb.yellow
            }
        }
    }

    var isEveryThirdBulbRed: Bool {
        get {
            switch self {
            case .fiveHourRow, .singleHourRow, .singleMinutesRow:
                false
            case .fiveMinutesRow:
                true
            }
        }
    }
}
