import Foundation

struct DateHelper {
    
    static private let calendar = Calendar.current
    
    static let timeFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        return formatter
    }()
    
    static func getHours(from date: Date) -> Int {
        calendar.component(.hour, from: date)
    }
    
    static func getMinutes(from date: Date) -> Int {
        calendar.component(.minute, from: date)
    }
    
    static func getSeconds(from date: Date) -> Int {
        calendar.component(.second, from: date)
    }

}
