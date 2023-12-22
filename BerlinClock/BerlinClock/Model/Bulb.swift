import SwiftUI

enum Bulb {
    case red, yellow, off
    
    var textualRepresentation: String {
        get {
            switch self {
            case .yellow:
                return "Y"
            case .red:
                return "R"
            case .off:
                return "O"
            }
        }
    }
    
    var color: Color {
        get {
            switch self {
            case .yellow:
                return Color.yellow
            case .red:
                return Color.red
            case .off:
                return Color.clear
            }
        }
    }
}
