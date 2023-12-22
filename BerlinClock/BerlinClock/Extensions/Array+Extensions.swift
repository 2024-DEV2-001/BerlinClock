import Foundation

extension Array where Element == Bulb {
    var textualRepresentation : String {
        self.map(\.textualRepresentation).joined()
    }
}
